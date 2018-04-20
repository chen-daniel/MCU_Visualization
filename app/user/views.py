from flask import render_template, flash, redirect, url_for, request, current_app, session
import datetime

from passlib.handlers.sha2_crypt import sha256_crypt
from app import app, db

from app.token import generate_confirmation_token, confirm_token
from app.email import send_email

from app.user.forms import LoginForm, RegistrationForm, ResetForm, ChangePasswordForm,ChangePasswordF, ChangeUsernameForm
from app.user.models import User
from app.dbobjects import user_info

from sqlalchemy import or_
from flask_login import login_user, logout_user, login_required, current_user



@app.route('/register', methods=['GET', 'POST'])
def register():
    form = RegistrationForm(request.form)
    if request.method == 'POST' and form.validate():
        user = User(form.username.data, form.email.data, form.password.data, False)
        # before adding into database, check if the email is already in the database.
        db.session.add(user_info(username=user.username, email=user.email,
                                password=user.password, register_date=datetime.datetime.now(),
                                confirmed=False, confirmed_date=None))
        db.session.commit()

        token = generate_confirmation_token(user.email)
        confirm_url = url_for('confirm_email', token=token, _external=True)
        html = render_template('activate.html', confirm_url=confirm_url)
        subject = "Please confirm your email"
        send_email(user.email, subject, html)

        flash('Registration Succeeded: ' + user.username)
        return redirect(url_for('login'))
    return render_template('register.html', form=form)


# route for the login URL that creates a form and passes it to the template for rendering
@app.route('/login', methods=['GET', 'POST'])
def login():
    form = LoginForm()
    if form.validate_on_submit():
        user = user_info.query.filter(user_info.username == form.username.data).first()
        if user:
            if not user.confirmed:
                flash('Account needs to be verified', 'warning')
                return redirect(url_for('login'))

            if sha256_crypt.verify(str(form.password.data), user.password) and user.confirmed:
                login_user(user)  # login user to current user`

                print(current_user)

                flash('Welcome {}!'.format(
                    form.username.data), 'info')

                return redirect(url_for('dbtables'))
        else:
            form.submit.error = 'Invalid username or password'
            return render_template('login.html', title='Sign In', form=form)
    return render_template('login.html', title='Sign In', form=form)

@app.route('/logout')
@login_required
def logout():
    logout_user()
    flash('User logged out.', 'success')
    return redirect(url_for('login'))

@app.route('/change-password', methods=['GET', 'POST'])
@login_required
def change_pw():
    """Change an existing user's password."""
    form = ChangePasswordF()
    if form.validate():
        user = User.query.filter_by(email=current_user.email).first()
        if sha256_crypt.verify(str(form.new_password.data), user.password):
            user.password = form.new_password.data
            db.session.commit()
            flash('Your password has been updated successfully.', 'success')
            return redirect(url_for('index'))
        else:
            flash('Original password is invalid.', 'danger')
    return render_template('change_PW.html', form=form)

@app.route('/change-username', methods=['GET', 'POST'])
@login_required
def change_username():
    """Change an existing user's password."""
    print(current_user)
    print("is on")
    form = ChangeUsernameForm()
    if form.validate():
        user = User.query.filter_by(user_ID=current_user.user_ID).first()
        user.username = form.new_username.data
        db.session.commit()
        flash('Your username has been updated successfully.', 'success')
        redirect(url_for('index'))
    return render_template('change_username.html', form=form)


@app.route('/confirm/<token>')
def confirm_email(token):
    try:
        email = confirm_token(token)
    except:
        flash('The confirmation link is invalid or has expired.', 'danger')
    user = user_info.query.filter_by(email=email).first_or_404()
    if user.confirmed:
        flash('Email provided is already on use. Please login or register with different email.', 'success')
    else:
        user.confirmed = True
        user.confirmed_date = datetime.datetime.now()
        db.session.add(user)
        db.session.commit()
        flash('Account confirmed. Thanks!', 'success')
    return redirect(url_for('login'))


@app.route('/reset_password', methods=['GET', 'POST'])
def reset_password():
    form = ResetForm(request.form)
    if form.validate():
        user = user_info.query.filter(user_info.email == form.email.data).first()
        token = generate_confirmation_token(user.email)

        user.password_token = token
        db.session.commit()

        change_url = url_for('change_password', token=token, _external=True)

        html = render_template('reset.html',
                               username=user.username,
                               change_url=change_url)
        subject = "Reset your password"
        send_email(user.email, subject, html)

        flash('A password reset email has been sent via email.', 'success')
        return redirect(url_for('login'))

    return render_template('reset_password.html', form=form)


@app.route('/reset_password/new/<token>', methods=['GET', 'POST'])
def change_password(token):
    email = confirm_token(token)

    user = user_info.query.filter(user_info.email == email).first_or_404()


    if user.password_token is not None:
        form = ChangePasswordForm(request.form)
        if form.validate_on_submit():
            user = user_info.query.filter_by(email=email).first()
            if user:
                user.password = sha256_crypt.encrypt(str(form.password.data))
                user.password_token = None
                
                subject = 'Password has been updated'
                html = render_template('pwchange_confirm.html',
                               username=user.username)

                send_email(user.email, subject, html)
                db.session.commit()

                flash('Password successfully updated.', 'success')
                return redirect(url_for('login'))

            else:
                flash('Password change was unsuccessful.', 'danger')
                return redirect(url_for('login'))
        else:
            flash('Please enter your new password.', 'success')
            return render_template('change_password.html', form=form)
    else:
        flash('unable to reset the password, try again.', 'danger')

    return redirect(url_for('login'))


@app.route('/manage')
@login_required
def manage():
    return render_template('manage.html')

# current user's profile
@app.route('/user_profile', methods=['GET', 'POST'])
@login_required
def user_profile():
    # Fix user with no data
    conn = db.engine.raw_connection()
    cur = conn.cursor()
    user = current_user
    return render_template('user_profile.html', user=user)

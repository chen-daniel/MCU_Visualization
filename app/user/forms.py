from flask_wtf import FlaskForm
from wtforms import Form, StringField, PasswordField, BooleanField, SubmitField, validators
from wtforms.validators import DataRequired, Length, EqualTo, Email
from app.dbobjects import user_info


class LoginForm(FlaskForm):
    username = StringField('Username', validators=[DataRequired()])
    password = PasswordField('Password', validators=[DataRequired()])
    remember_me = BooleanField('Remember Me')
    submit = SubmitField('Sign In')


class RegistrationForm(Form):
    username = StringField('Username', [validators.Length(min=4, max=25)])
    email = StringField('Email Address', [validators.Length(min=6, max=35)])
    password = PasswordField('New Password', [
        validators.DataRequired(),
        validators.EqualTo('confirm', message='Passwords must match')
    ])
    confirm = PasswordField('Confirm Password')
    accept_tos = BooleanField(
        'I love database',
        [validators.Required()])

    def validate(self):
    	initial_validation = super(RegistrationForm, self).validate()
    	if not initial_validation:
    		return False
    	user_name = user_info.query.filter_by(username=self.username.data).first()
    	if user_name:
    		self.username.errors.append("Username is already taken")
    		return False
    	email_address = user_info.query.filter_by(email=self.email.data).first()
    	if email_address:
    		self.email.errors.append("Email already used")
    		return False
    	return True

class ChangeUsernameForm(Form):
    new_username = StringField('new username')
    def validate(self):
        initial_validation = super(ChangeUsernameForm, self).validate()
        if not initial_validation:
            return False
        user_name = user_info.query.filter_by(username=self.new_username.data).first()
        if user_name:
            self.username.errors.append("Username is already taken")
            return False


class ChangePasswordF(Form):
    old_password = PasswordField('Old Password', validators=[DataRequired()])
    new_password = PasswordField(
        'New Password',
        validators=[
            DataRequired(),
            EqualTo('new_password2', 'Passwords must match')
        ])
    confirm_password = PasswordField(
        'Confirm New Password')
    submit = SubmitField('Update password')

class ResetForm(Form):
    email = StringField(
        'email',
        validators=[DataRequired(), Email(message=None), Length(min=6, max=255)])

    def validate(self):
        initial_validation = super(ResetForm, self).validate()
        if not initial_validation:
            return False
        user = user_info.query.filter_by(email=self.email.data).first()
        if not user:
            self.email.errors.append("This email is not registered")
            return False
        return True


class ChangePasswordForm(FlaskForm):
    password = PasswordField('New Password', [
        validators.DataRequired(),
        validators.EqualTo('confirm', message='Passwords must match')
    ])
    confirm = PasswordField('Confirm Password')
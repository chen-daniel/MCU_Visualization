from app import app
from app.user import views
from flask import render_template, flash, redirect, url_for, request, current_app, session

@app.route('/')
def main():
    return redirect(url_for('login'))

@app.route('/index')
def index():
    return render_template('index.html')
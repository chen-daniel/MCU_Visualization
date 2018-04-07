from flask import render_template
from flask import request
from flask_sqlalchemy import SQLAlchemy
from flask_login import UserMixin
from app import db, app


# class to represent a user from sql
class user_info(db.Model):
    __tablename__ = 'user_info'
    __table_args__ = {'extend_existing': True}

    user_ID = db.Column('userID', db.Integer, primary_key=True)
    username = db.Column('username', db.Unicode)
    email = db.Column('email', db.Unicode)
    password = db.Column('password', db.Unicode)
    register_date = db.Column('registered_date', db.DateTime, nullable=False)
    confirmed = db.Column('confirmed', db.Boolean, nullable=False, default=False)
    confirmed_date = db.Column('confirmed_date', db.DateTime)
    password_token = db.Column('pw_token', db.Unicode)

    def is_active(self):
        return True

    def get_id(self):
        return self.user_ID

    def is_authenticated(self):
        return True
      
    def is_anonymous(self):
        return False
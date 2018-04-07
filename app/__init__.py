from flask import Flask
from config import Config
from flask_sqlalchemy import SQLAlchemy
import pymysql

from flask_mail import Mail
from flask_login import LoginManager
from config import Config

#initialize flask app
app = Flask(__name__, static_url_path='/static')
app.config.from_object(Config)

#setup for mysql
pymysql.install_as_MySQLdb()
db = SQLAlchemy(app)

#creating login manager
login_manager = LoginManager()
login_manager.init_app(app)

from app.dbobjects import user_info

login_manager.login_view = "user.login"
login_manager.login_message_category = "danger"

@login_manager.user_loader
def load_user(user_id):
    return user_info.query.filter(user_info.user_ID == int(user_id)).first()

#setup for email
mail = Mail(app)

#run the main
from app import main
#or from app.user import views ???
import os   

class Config(object):

    SECRET_KEY = os.environ.get('SECRET_KEY') or 'you-will-never-guess'
    
    #For authentication
    SECURITY_PASSWORD_SALT = os.environ.get('SECRET_KEY') or 'yOu_wiLl-NeVEr_GuEsS!@#$'
    DEBUG = False
    BCRYPT_LOG_ROUNDS = 13
    WTF_CSRF_ENABLED = True
    DEBUG_TB_ENABLED = False
    DEBUG_TB_INTERCEPT_REDIRECTS = False

    # mail settings
    MAIL_SERVER = 'smtp.googlemail.com'
    MAIL_PORT = 587
    MAIL_USE_TLS = True
    MAIL_USE_SSL = False

    # gmail authentication
    MAIL_USERNAME = os.environ['APP_MAIL_USERNAME']
    MAIL_PASSWORD = os.environ['APP_MAIL_PASSWORD']

    # mail accounts
    MAIL_DEFAULT_SENDER = 'from@example.com'

    # Database information
    
    driver = 'mysql://'
    SQLALCHEMY_DATABASE_URI = driver \
                                        + os.environ['RDS_USERNAME'] + ':' + os.environ['RDS_PASSWORD'] \
                                        +'@' + os.environ['RDS_HOSTNAME']  +  ':' + os.environ['RDS_PORT'] \
                                        + '/' + os.environ['RDS_DB_NAME']
    


    # allow sql alchemy to track changes to the databse
    SQLALCHEMY_TRACK_MODIFICATIONS = True
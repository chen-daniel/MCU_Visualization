from app import app
from app.user import views
from flask import render_template, flash, redirect, url_for, request, current_app, session
from flask_mysqldb import MySQL

import json

app.config['MYSQL_HOST'] = 'databaseproject.cwoxgifwds2r.us-east-1.rds.amazonaws.com'
app.config['MYSQL_USER'] = 'chenshinvu'
app.config['MYSQL_PASSWORD'] = 'Vuminhtam1307'
app.config['MYSQL_DB'] = 'MCU_VISUALIZATION'
mysql = MySQL(app)

@app.route('/')
def main():
    return redirect(url_for('login'))

@app.route('/index')
def index():
    return render_template('index.html')

@app.route('/guardians_of_galaxy')
def guardians_of_galaxy():
    return render_template('guardians_of_galaxy.html')

# Tam's stuff

@app.route('/temp/<movie>')
def charInMovie(movie):
  cur = mysql.connection.cursor()
  cur.execute('''CALL char_in_movie(1)''')
  rv = cur.fetchall()
  return jsonifyChars(rv)

def jsonifyChars(char):
   payload = []
   content = {}
   for result in rv:
       content = {
       'id': result[0], 
       'alias': result[1], 
       'name': result[2],
       'gender': result[3],
       'species': result[4],
       'first_movie': result[5]}

       payload.append(content)
       content = {}
   return jsonify(payload)
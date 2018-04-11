from app import app
from app.user import views
from flask import render_template, flash, redirect, url_for, request, current_app, session
from flask.ext.mysqldb import MySQL

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
  return {
   "nodes" : jsonifyChars(char),
   "links" : linkChar(char)}

def linkChar(char):
	payload = []
   i = 0
   for c1 in char:
   	if i >= enumerate(char): break
   	for c2 in char:
   		if i >= enumerate(char): break
   		elif(c1[0] != c2[0]):  
   			payload.append(makeLink(c1, c2))
   			i = i + 1
   return jsonify(payload)

def makeLink(char1, char2):
	return {"source": char1[1], "target": char2[1], "value": 100}

def jsonifyAChar(c): 
	return {
       'id': result[0], 
       'alias': result[1], 
       'name': result[2],
       'gender': result[3],
       'species': result[4],
       'first_movie': result[5]}

def jsonifyChars(char):
   payload = []
   content = {}
   for result in char:
       content = jsonifyAChar(result)
       payload.append(content)
       content = {}
   return jsonify(payload)
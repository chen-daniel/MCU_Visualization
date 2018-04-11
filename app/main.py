from app import app
from app.user import views
from flask import render_template, flash, redirect, url_for, request, current_app, session
#from flask.ext.mysqldb import MySQL

import mysql.connector
from flask import jsonify,json

# app.config['MYSQL_HOST'] = 'databaseproject.cwoxgifwds2r.us-east-1.rds.amazonaws.com'
# app.config['MYSQL_USER'] = 'chenshinvu'
# app.config['MYSQL_PASSWORD'] = 'Vuminhtam1307'
# app.config['MYSQL_DB'] = 'MCU_VISUALIZATION'
# mysql = MySQL(app)

cnn = mysql.connector.connect(
	user = 'chenshinvu', 
	password = "Vuminhtam1307",
	host = 'databaseproject.cwoxgifwds2r.us-east-1.rds.amazonaws.com',
	database = 'MCU_VISUALIZATION')
print("database connected!")

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
query = "CALL char_in_movie(1)"
@app.route('/temp')
def temp():
	cur = cnn.cursor()
	cur.execute(query, multi = True)
	rv = cur.fetchall()
	return(jsonify(rv))


def charInMovie(movie):
	
	#cur = mysql.connection.cursor()
	cur = cnn.cursor()
	cur.execute(query, multi = True)
	print("hi")
	rv = cur.fetchall()
	print {
	"nodes" : jsonifyChars(rv),
	"links" : linkChar(rv)}

def linkChar(char):
	payload = []
	i = 0
	for c1 in char:
		if i >= enumerate(char) - 1 : 
			break
		for c2 in char:
			if i >= enumerate(char) - 1: 
				break 
			elif c1[0] != c2[0]:
				payload.append(makeLink(c1, c2))
				i = i + 1
	return jsonify(payload)

def makeLink(char1, char2):
	return {"source": char1[1], "target": char2[1], "value": 100}

def jsonifyChars(char):
	print("hi")
   payload = []
   content = {}
   for result in char:
	   content = jsonifyAChar(result)
	   payload.append(content)
	   content = {}
   return jsonify(payload)

def jsonifyAChar(result): 
	return {
	'id': result[0],
	'group': result[6],
	'image':result[5],
	'about': jsonAbout(result),
	'events': eventToString(result)}







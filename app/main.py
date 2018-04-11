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
query1 = "CALL char_in_movie(1)"
query2 = "SELECT * FROM characters C JOIN movies_characters MC ON 1 =  MC.movie_id WHERE C.character_id = MC.character_id"
query = "SELECT * FROM characters"
@app.route('/temp/<movie>')
# def temp():
# 	print("hi")
# 	cur = cnn.cursor()
# 	cur.execute(query1)
# 	rv = cur.fetchall()
# 	return(jsonify(rv))

def charInMovie(movie):
	#cur = mysql.connection.cursor()
	cur = cnn.cursor()
	cur.execute(query2)
	rv = cur.fetchall()

	cur1 = cnn.cursor()
	cur1.execute("SELECT COUNT(*) FROM characters C JOIN movies_characters MC ON 1 =  MC.movie_id WHERE C.character_id = MC.character_id")
	num_nodes = cur1.fetchone()
	#return jsonifyChars(rv)
	return jsonify({'nodes': jsonifyChars(rv)
		,"links" : linkChar(rv, num_nodes[0])})

def linkChar(char,n):
	payload = []
	i = 0
	for c1 in char:
		if i >= n-1: 
		 	break
		for c2 in char:
			if i >= n-1:
				break 
			if c1[0] != c2[0]:
				payload.append(makeLink(c1, c2))
				i = i + 1
	return payload

def makeLink(char1, char2):
	return {"source": char1[1], "target": char2[1], "value": 200}

def jsonifyChars(char):
	payload = []
	content = {}
	for result in char:
		content = jsonifyAChar(result)
		payload.append(content)
		content = {}
	return payload
		#return jsonify(payload)

def jsonifyAChar(result):
	return {
	'id': result[1],
	'group': result[6],
	'image': result[5],
	'about': jsonAbout(result),
	'events': eventToString(result)}

def jsonAbout(char):
	return [char[2], gender(char[3]), char[4]]

def gender(code):
	if code == 'F': return 'Female'
	else: return 'Male'


def eventToString(char):
	cur = cnn.cursor()
	char_id = char[0]
	#query3 = ("CALL eventDes('%s')") % char_id
	query_event = ("SELECT description FROM events_characters WHERE character_id = '%s'") % char_id
	cur.execute(query_event)
	rv = cur.fetchall()
	arr = []
	for des in rv:
		arr.append(des[0])
	return arr;





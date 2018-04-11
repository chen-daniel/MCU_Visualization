import os
from app import app
from app.user import views
from flask import render_template, flash, redirect, url_for, request, current_app, session

import mysql.connector
from flask import jsonify,json

cnn = mysql.connector.connect(
	user = os.environ['RDS_USERNAME'], 
	password = os.environ['RDS_PASSWORD'],
	host = os.environ['RDS_HOSTNAME'],
	database = os.environ['RDS_DB_NAME'])

print("database connected!")

@app.route('/')
def main():
	return redirect(url_for('login'))

@app.route('/index')
def index():
	return render_template('index.html')

@app.route('/guardians_of_galaxy')
def guardians_of_galaxy():
	return render_template('guardians_of_galaxy.html', jsondata=charInMovie(15))



@app.route('/test')
def testing():
	return charInMovie(15)

def charInMovie(movie_ID):
	query = "SELECT * FROM characters C JOIN movies_characters MC ON {} =  MC.movie_id WHERE C.character_id = MC.character_id".format(movie_ID)
	cur = cnn.cursor()
	cur.execute(query)
	rv = cur.fetchall()

	result_json = jsonify({'nodes': jsonifyChars(rv)
		,"links" : linkChar(rv)})
	return result_json

def linkChar(char):
	payload = []
	i = 0
	for c1 in char:
		# if i >= enumerate(char): 
		# 	break
		for c2 in char:
			# if i >= enumerate(char) - 1: 
			# 	break 
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
		arr.append(des[0].replace('"', ''))
	return arr;


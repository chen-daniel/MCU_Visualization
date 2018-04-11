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

@app.route('/')
def main():
	return redirect(url_for('login'))

@app.route('/index')
def index():
	return render_template('index.html')

#===================================================================================
@app.route('/iron_man')
def iron_man():
	return render_template('iron_man.html', jsondata=charInMovie(1))

@app.route('/the_incredible_hulk')
def the_incredible_hulk():
	return render_template('the_incredible_hulk.html', jsondata=charInMovie(2))

@app.route('/iron_man_2')
def iron_man_2():
	return render_template('iron_man_2.html', jsondata=charInMovie(3))

@app.route('/thor')
def thor():
	return render_template('thor.html', jsondata=charInMovie(4))

@app.route('/captain_america_the_first_avenger')
def captain_america_the_first_avenger():
	return render_template('captain_america_the_first_avenger.html', jsondata=charInMovie(5))

@app.route('/the_avengers')
def the_avengers():
	return render_template('the_avengers.html', jsondata=charInMovie(6))

@app.route('/iron_man_3')
def iron_man_3():
	return render_template('iron_man_3.html', jsondata=charInMovie(7))

@app.route('/thor_dark_world')
def thor_dark_world():
	return render_template('thor_dark_world.html', jsondata=charInMovie(8))

@app.route('/captain_america_the_winter_soldier')
def captain_america_the_winter_soldier():
	return render_template('captain_america_the_winter_soldier.html', jsondata=charInMovie(9))

@app.route('/guardians_of_galaxy')
def guardians_of_the_galaxy():
	return render_template('guardians_of_galaxy.html', jsondata=charInMovie(10))

@app.route('/avengers_age_of_ultron')
def avengers_age_of_ultron():
	return render_template('avengers_age_of_ultron.html', jsondata=charInMovie(11))

@app.route('/ant_man')
def ant_man():
	return render_template('ant_man.html', jsondata=charInMovie(12))

@app.route('/captain_america_civil_war')
def captain_america_civil_war():
	return render_template('captain_america_civil_war.html', jsondata=charInMovie(13))

@app.route('/doctor_strange')
def doctor_strange():
	return render_template('doctor_strange.html', jsondata=charInMovie(14))

@app.route('/guardians_of_the_galaxy_vol_2')
def guardians_of_the_galaxy_vol_2():
	return render_template('guardians_of_the_galaxy_vol_2.html', jsondata=charInMovie(15))

@app.route('/spider_man_homecoming')
def spider_man_homecoming():
	return render_template('spider_man_homecoming.html', jsondata=charInMovie(16))

@app.route('/thor_ragnarok')
def thor_ragnarok():
	return render_template('thor_ragnarok.html', jsondata=charInMovie(17))

@app.route('/black_panther')
def black_panther():
	return render_template('black_panther.html', jsondata=charInMovie(18))
#=================================================================================



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


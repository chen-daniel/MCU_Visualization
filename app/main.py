import os
from app import app
from app.user import views
from flask import render_template, flash, redirect, url_for, request, current_app, session


import mysql.connector
from flask import jsonify,make_response
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
	return render_template('iron_man.html')

@app.route('/the_incredible_hulk')
def the_incredible_hulk():
	return render_template('the_incredible_hulk.html')

@app.route('/iron_man_2')
def iron_man_2():
	return render_template('iron_man_2.html')

@app.route('/thor')
def thor():
	return render_template('thor.html')

@app.route('/captain_america_the_first_avenger')
def captain_america_the_first_avenger():
	return render_template('captain_america_the_first_avenger.html')

@app.route('/the_avengers')
def the_avengers():
	return render_template('the_avengers.html')

@app.route('/iron_man_3')
def iron_man_3():
	return render_template('iron_man_3.html')

@app.route('/thor_dark_world')
def thor_dark_world():
	return render_template('thor_dark_world.html')

@app.route('/captain_america_the_winter_soldier')
def captain_america_the_winter_soldier():
	return render_template('captain_america_the_winter_soldier.html')

@app.route('/guardians_of_galaxy')
def guardians_of_the_galaxy():
	return render_template('guardians_of_galaxy.html')

@app.route('/avengers_age_of_ultron')
def avengers_age_of_ultron():
	return render_template('avengers_age_of_ultron.html')

@app.route('/ant_man')
def ant_man():
	return render_template('ant_man.html')

@app.route('/captain_america_civil_war')
def captain_america_civil_war():
	return render_template('captain_america_civil_war.html')

@app.route('/doctor_strange')
def doctor_strange():
	return render_template('doctor_strange.html')

@app.route('/guardians_of_the_galaxy_vol_2')
def guardians_of_the_galaxy_vol_2():
	return render_template('guardians_of_the_galaxy_vol_2.html')

@app.route('/spider_man_homecoming')
def spider_man_homecoming():
	return render_template('spider_man_homecoming.html')

@app.route('/thor_ragnarok')
def thor_ragnarok():
	return render_template('thor_ragnarok.html')

@app.route('/black_panther')
def black_panther():
	return render_template('black_panther.html')
#=================================================================================




@app.route('/test/<movie_id>')
def testing(movie_id):
	return charInMovie(movie_id)

def charInMovie(movie_ID):
	cur = cnn.cursor()
	links = []
	cur.callproc('org_movie_connections', [movie_ID])
	for result in cur.stored_results():
		links += result.fetchall()
	cur.callproc('char_movie_connections', [movie_ID])
	for result in cur.stored_results():
		links += result.fetchall()
	cur.callproc('char_org_connections', [movie_ID])
	for result in cur.stored_results():
		links += result.fetchall()
	cur.callproc('events_movie_connections', [movie_ID])
	for result in cur.stored_results():
		links += result.fetchall()


	print("12371637")
	print(links)
	print(createLinks(links))

	cur.callproc('char_in_movie', [movie_ID])
	for result in cur.stored_results():
		charNodes = result.fetchall()
	cur.callproc('org_in_movie', [movie_ID])
	for result in cur.stored_results():
		orgNodes = result.fetchall()
	cur.callproc('movie_info', [movie_ID])
	for result in cur.stored_results():
		movieNode = result.fetchall()
	cur.callproc('events_in_movie', [movie_ID])
	for result in cur.stored_results():
		eventNodes = result.fetchall()
	print(movieNode)

	result_json = jsonify({'nodes': jsonifyNodes(charNodes, orgNodes, movieNode, eventNodes)
		,"links" : createLinks(links)})
	return result_json

def createLinks(links):
	payload = []
	for link in links:
		payload.append(makeLink(link[0], link[1]))
	return payload

def makeLink(char1, char2):
	return {"source": char1, "target": char2, "value": 200}

def jsonifyNodes(chars, orgs, movie, events):
	payload = []
	for char in chars:
		content = jsonifyAChar(char)
		payload.append(content)
		content = {}
	for event in events:
		content = jsonifyAEvent(event)
		payload.append(content)
		content = {}

	for org in orgs:
		content = jsonifyAOrg(char)
		payload.append(content)
		content = {}
	for mov in movie:
		content = jsonifyMovie(mov)
		payload.append(content)
		content = {}
	return payload

def jsonifyChars(char):
	payload = []
	content = {}
	for result in char:
		content = jsonifyAChar(result)
		payload.append(content)
		content = {}
	return payload


def jsonifyAChar(result):
	if result[6]:
		return {
		'id': result[1],
		'group': 1,
		'image': result[6],
		'about': jsonAbout(result),
		'events': 'to connections'}
	else:
		return {
		'id': result[1],
		'group': 1,
		'image': False,
		'about': jsonAbout(result),
		'events': 'to connections'}

def jsonifyAEvent(result):
	return {
	'id': result[1],
	'group': 1,
	'image': False,
	'about': result[2],
	'events': 'to connections'}

def jsonifyAOrg(result):
	return {
	'id': result[1],
	'group': 1,
	'image': False,
	'about': 'testText',
	'events': 'to connections'}

def jsonifyMovie(result):
	return {
	'id': result[1],
	'group': 1,
	'image': False,
	'about': result[3],
	'events': 'to connections'}

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


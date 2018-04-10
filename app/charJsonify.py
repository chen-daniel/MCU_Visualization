from flask import Flask, jsonify
from flask.ext.mysqldb import MySQL
import app

app = Flask(__name__)
app.config['MYSQL_HOST'] = 'databaseproject.cwoxgifwds2r.us-east-1.rds.amazonaws.com'
app.config['MYSQL_USER'] = 'chenshinvu'
app.config['MYSQL_PASSWORD'] = 'Vuminhtam1307'
app.config['MYSQL_DB'] = 'chenshinvu'
mysql = MySQL(app)

@app.route('/temp')
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

if __name__ == '__main__':
   app.run(debug=True)
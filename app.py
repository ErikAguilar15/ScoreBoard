from flask import Flask, render_template, request
app = Flask(__name__)
from main import *
import sqlite3 as sql
from sqlite3 import Error

@app.route('/addrec',methods = ['POST', 'GET'])
def addrec():
   if request.method == 'POST':
      id = request.form['id']
      conn = createConnection("src/statistics.db")
      conn.row_factory = sql.Row
      rows = searchPlayerByID(conn, id)
      return render_template('result.html', rows = rows)

@app.route('/addrec1',methods = ['POST', 'GET'])
def addrec1():
   if request.method == 'POST':
      name = request.form['Name']
      conn = createConnection("src/statistics.db")
      conn.row_factory = sql.Row
      rows = searchPlayerByName(conn, name)
      return render_template('result.html', rows = rows)

@app.route('/addrec2',methods = ['POST', 'GET'])
def addrec2():
   if request.method == 'POST':
      id = request.form['id']
      conn = createConnection("src/statistics.db")
      conn.row_factory = sql.Row
      rows = searchCoachByID(conn, id)
      return render_template('result2.html', rows = rows)

@app.route('/addrec3',methods = ['POST', 'GET'])
def addrec3():
   if request.method == 'POST':
      name = request.form['Name']
      conn = createConnection("src/statistics.db")
      conn.row_factory = sql.Row
      rows = searchCoachByName(conn, name)
      return render_template('result2.html', rows = rows)

@app.route('/addrec4',methods = ['POST', 'GET'])
def addrec4():
   if request.method == 'POST':
      id = request.form['id']
      conn = createConnection("src/statistics.db")
      conn.row_factory = sql.Row
      rows = searchTeamByID(conn, id)
      return render_template('result3.html', rows = rows)

@app.route('/addrec5',methods = ['POST', 'GET'])
def addrec5():
   if request.method == 'POST':
      name = request.form['Name']
      conn = createConnection("src/statistics.db")
      conn.row_factory = sql.Row
      rows = searchTeamByName(conn, name)
      return render_template('result3.html', rows = rows)

@app.route("/searchCoach")
def searchc():
    return render_template('searchcoach.html')

@app.route("/searchPlayer")
def search():
    return render_template('searchplayer.html')

@app.route("/searchTeam")
def searcht():
    return render_template('searchteam.html')

@app.route("/")
def main():
    return render_template('index.html')

    #eturn "Scoreboard: Your high school basktball and football shit"

if __name__ == "__main__":
    app.run()

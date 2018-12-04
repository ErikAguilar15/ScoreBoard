from flask import Flask, render_template, request
app = Flask(__name__)
from main import *
import sqlite3 as sql
from sqlite3 import Error

@app.route("/searchPlayer")
def search():
    return render_template('searchplayer.html')

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

@app.route("/searchCoach")
def searchc():
    return render_template('searchcoach.html')

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

@app.route("/searchTeam")
def searcht():
    return render_template('searchteam.html')

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


#home pages
@app.route("/search")
def mainsearch():
    return render_template('index.html')

@app.route("/")
def main():
    return render_template('main.html')

@app.route("/Home")
def fanmain():
    return render_template('fan.html')

@app.route("/CoachHome")
def coachmain():
    return render_template('coach.html')

#Statistics
@app.route("/stats")
def stats():
    return render_template('stats.html')

@app.route("/basketballstats")
def basketballstats():
    return render_template('basketballstats.html')

@app.route("/footballstats")
def basketballstats():
    return render_template('footballstats.html')

@app.route("/basketballscores")
def basketballscores():
    conn = createConnection("src/statistics.db")
    conn.row_factory = sql.Row
    rows = viewHoopScores(conn)
    return render_template('scores.html', rows = rows)

@app.route("/footballstats")
def footballscores():
    conn = createConnection("src/statistics.db")
    conn.row_factory = sql.Row
    rows = viewFootballScores(conn)
    return render_template('scores.html', rows = rows)

#inserts
@app.route("/insertHome")
def insertHome():
    return render_template('inserts.html')

@app.route("/insertPlayer")
def insertPlayer():
    return render_template('insertPlayer.html')

@app.route("/insertSchedule")
def insertSchedule():
    return render_template('insertSchedule.html')

@app.route("/insertSchool")
def insertSchool():
    return render_template('insertSchool.html')

@app.route("/insertTeam")
def insertTeam():
    return render_template('insertTeam.html')

@app.route("/insertCoach")
def insertCoach():
    return render_template('insertCoach.html')

@app.route("/insertBTeamStats")
def insertBTeamStats():
    return render_template('insertBTeamStats.html')

@app.route("/insertBPlayerStats")
def insertBPlayerStats():
    return render_template('insertBPlayerStats.html')

@app.route("/insertFTeamStats")
def insertFTeamStats():
    return render_template('insertFTeamStats.html')

@app.route("/insertFPlayerStats")
def insertFPlayerStats():
    return render_template('insertFPlayerStats.html')

@app.route("/insertTeamStats")
def insertTeamStats():
    return render_template('insertTeamStats.html')
    #eturn "Scoreboard: Your high school basktball and football shit"

if __name__ == "__main__":
    app.run()

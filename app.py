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
def footballstats():
    return render_template('footballstats.html')

@app.route("/basketballscores")
def basketballscores():
    conn = createConnection("src/statistics.db")
    conn.row_factory = sql.Row
    rows = viewHoopScores(conn)
    return render_template('scores.html', rows = rows)

@app.route("/footballscores")
def footballscores():
    conn = createConnection("src/statistics.db")
    conn.row_factory = sql.Row
    rows = viewFootballScores(conn)
    return render_template('scores.html', rows = rows)

@app.route("/bballplayerstats")
def bballplayerstats():
    conn = createConnection("src/statistics.db")
    conn.row_factory = sql.Row
    rows = viewHoopPlayerStats(conn)
    return render_template('bballplayerstats.html', rows = rows)

@app.route("/bballplayerstatsbyteam",methods = ['POST', 'GET'])
def bballplayerstatsbyteam():
    if request.method == 'POST':
        team = request.form['team']
        conn = createConnection("src/statistics.db")
        conn.row_factory = sql.Row
        rows = viewHoopPlayerStatsByTeam(conn, team)
        return render_template('bballplayerstats.html', rows = rows)

@app.route("/bballplayerstatsbyposition",methods = ['POST', 'GET'])
def bballplayerstatsbyposition():
    if request.method == 'POST':
        position = request.form['position']
        conn = createConnection("src/statistics.db")
        conn.row_factory = sql.Row
        rows = viewHoopPlayerStatsByPosition(conn, position)
        return render_template('bballplayerstats.html', rows = rows)


@app.route("/fballplayerstats")
def fballplayerstats():
    return render_template('fballplayerstats.html')

@app.route("/fballplayerstatsoffense")
def fballplayerstatsoffense():
    conn = createConnection("src/statistics.db")
    conn.row_factory = sql.Row
    rows = viewFBallOffenseStats(conn)
    return render_template('fballplayerstats-offense.html', rows = rows)

@app.route("/fballplayerstatsdefense")
def fballplayerstatsdefense():
    conn = createConnection("src/statistics.db")
    conn.row_factory = sql.Row
    rows = viewFBallDefenseStats(conn)
    return render_template('fballplayerstats-defense.html', rows = rows)

#register/sign in
@app.route("/registerUser")
def registerUser():
    return render_template('registerUser.html')

#inserts
@app.route("/insertHome")
def insertHome():
    return render_template('inserts.html')

@app.route("/insertPlayer")
def insertPlayer():
    return render_template('insertPlayer.html')

@app.route('/insertPlayerRequest',methods = ['POST', 'GET'])
def insertPlayerRequest():
   if request.method == 'POST':
      name = request.form['name']
      id = request.form['id']
      teamid = request.form['teamid']
      sport = request.form['sport']
      height = request.form['height']
      weight = request.form['weight']
      position = request.form['position']
      conn = createConnection("src/statistics.db")
      c = conn.cursor()
      inputPlayer(conn, name, id, teamid, sport, height, weight, position)
      conn.commit()
      return render_template('insertPlayer.html')
      conn.close()

@app.route('/insertBPlayerStatsRequest',methods = ['POST', 'GET'])
def insertBPlayerStatsRequest():
   if request.method == 'POST':
      id = request.form['id']
      rebounds = request.form['rebounds']
      assists = request.form['assists']
      steals = request.form['steals']
      blocks = request.form['blocks']
      turnovers = request.form['turnovers']
      conn = createConnection("src/statistics.db")
      c = conn.cursor()
      inputBPlayerStats(id, rebounds, assists, steals, blocks, turnovers)
      conn.commit()
      return render_template('insertBPlayerStats.html')
      conn.close()

@app.route('/insertBTeamStatsRequest',methods = ['POST', 'GET'])
def insertBTeamStatsRequest():
   if request.method == 'POST':
      teamid = request.form['teamid']
      points = request.form['points']
      rebounds = request.form['rebounds']
      assists = request.form['assists']
      steals = request.form['steals']
      blocks = request.form['blocks']
      turnovers = request.form['turnovers']
      conn = createConnection("src/statistics.db")
      c = conn.cursor()
      inputBasketballTeamStats(teamid, points, rebounds, assists, steals, blocks, turnovers)
      conn.commit()
      return render_template('insertBTeamStats.html')
      conn.close()

@app.route('/insertCoachRequest',methods = ['POST', 'GET'])
def insertCoachRequest():
   if request.method == 'POST':
      name = request.form['name']
      id = request.form['id']
      teamid = request.form['teamid']
      sport = request.form['sport']
      league = request.form['league']
      division = request.form['division']
      schoolid = request.form['schoolid']
      conn = createConnection("src/statistics.db")
      c = conn.cursor()
      inputCoach(conn, name, id, teamid, sport, height, weight, position)
      conn.commit()
      return render_template('insertCoach.html')
      conn.close()

@app.route('/insertFPlayerStatsRequest',methods = ['POST', 'GET'])
def insertFPlayerStatsRequest():
   if request.method == 'POST':
      id = request.form['id']
      passyards = request.form['passyards']
      rushyards = request.form['rushyards']
      receptions = request.form['receptions']
      ointerceptions = request.form['ointerceptions']
      touchdowns = request.form['touchdowns']
      recievingyards = request.form['recievingyards']
      fumbles = request.form['fumbles']
      dinterceptions = request.form['dinterceptions']
      sacks = request.form['sacks']
      tackles = request.form['tackles']
      forcefumbles = request.form['forcefumbles']
      conn = createConnection("src/statistics.db")
      c = conn.cursor()
      inputFootballPlayerStats(id, passyards, rushyards, receptions, ointerceptions, touchdowns, recievingyards, fumbles, dinterceptions, sacks, tackles, forcefumbles)
      conn.commit()
      return render_template('insertFPlayerStats.html')
      conn.close()

@app.route('/insertFTeamStatsRequest',methods = ['POST', 'GET'])
def insertFTeamStatsRequest():
   if request.method == 'POST':
      id = request.form['id']
      passyards = request.form['passyards']
      rushyards = request.form['rushyards']
      tackles = request.form['tackles']
      receptions = request.form['receptions']
      sacks = request.form['sacks']
      ointerceptions = request.form['ointerceptions']
      forcefumbles = request.form['forcefumbles']
      touchdowns = request.form['touchdowns']
      recievingyards = request.form['recievingyards']
      fumbles = request.form['fumbles']
      dinterceptions = request.form['dinterceptions']
      conn = createConnection("src/statistics.db")
      c = conn.cursor()
      inputFootballTeamStats(id, passyards, rushyards, tackles, receptions, sacks, ointerceptions, forcefumbles, touchdowns, recievingyards, fumbles, dinterceptions)
      conn.commit()
      return render_template('insertFTeamStats.html')
      conn.close()

@app.route('/insertScheduleRequest',methods = ['POST', 'GET'])
def insertScheduleRequest():
   if request.method == 'POST':
      id = request.form['id']
      sport = request.form['sport']
      schoolid = request.form['schoolid']
      matchup = request.form['matchup']
      week = request.form['week']
      location = request.form['location']
      conn = createConnection("src/statistics.db")
      c = conn.cursor()
      inputSchedule(id, sport, schoolid, matchup, week, location)
      conn.commit()
      return render_template('insertSchedule.html')
      conn.close()

@app.route('/insertSchoolRequest',methods = ['POST', 'GET'])
def insertSchoolRequest():
   if request.method == 'POST':
      schoolid = request.form['schoolid']
      city = request.form['city']
      state = request.form['state']
      mascot = request.form['mascot']
      name = request.form['name']
      conn = createConnection("src/statistics.db")
      c = conn.cursor()
      inputSchool(schoolid, city, state, mascot, name)
      conn.commit()
      return render_template('insertSchool.html')
      conn.close()

@app.route('/insertTeamRequest',methods = ['POST', 'GET'])
def insertTeamRequest():
   if request.method == 'POST':
      name = request.form['name']
      teamid = request.form['teamid']
      sport = request.form['sport']
      league = request.form['league']
      division = request.form['division']
      schoolid = request.form['schoolid']
      conn = createConnection("src/statistics.db")
      c = conn.cursor()
      inputTeam(name, teamid, sport, league, division, schoolid)
      conn.commit()
      return render_template('insertTeam.html')
      conn.close()

@app.route('/insertTeamStatsRequest',methods = ['POST', 'GET'])
def insertTeamStatsRequest():
   if request.method == 'POST':
      hometeamid = request.form['hometeamid']
      awayteamid = request.form['awayteamid']
      sport = request.form['sport']
      matchup = request.form['matchup']
      score1 = request.form['score1']
      score2 = request.form['score2']
      conn = createConnection("src/statistics.db")
      c = conn.cursor()
      inputTeamStats(hometeamid, awayteamid, sport, matchup, score1, score2)
      conn.commit()
      return render_template('insertTeamStats.html')
      conn.close()

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

#!/usr/bin/python

import sqlite3
from sqlite3 import Error

def createConnection(db_file):
    return sqlite3.connect(db_file);

def closeConnection(conn):
    conn.close()

def executeQuery(conn, query):
    c = conn.cursor()
    c.execute(query)
    c.commit()

    rows = cursor.fetchall()

    for row in rows:
        print(row)

#search queries!!!! ESKETIT
def searchPlayerByName(conn, name):
    c = conn.cursor()
    sql = "SELECT * FROM Player WHERE p_name LIKE \'%"
    sql += name
    sql += "%\'"
    c.execute(sql)

    rows = c.fetchall()

    for row in rows:
        print(row)

    return rows

def searchPlayerByID(conn, id):
    c = conn.cursor()
    sql = "SELECT * FROM Player WHERE p_playerID = \'"
    sql += id
    sql += "\'"
    c.execute(sql)

    rows = c.fetchall()

    for row in rows:
        print(row)

    return rows

def searchCoachByName(conn, name):
    c = conn.cursor()
    sql = "SELECT * FROM Coach WHERE c_name LIKE \'%"
    sql += name
    sql += "%\'"
    c.execute(sql)

    rows = c.fetchall()

    for row in rows:
        print(row)

    return rows

def searchCoachByID(conn, id):
    c = conn.cursor()
    sql = "SELECT * FROM Coach WHERE c_coachID = \'"
    sql += id
    sql += "\'"
    c.execute(sql)

    rows = c.fetchall()

    for row in rows:
        print(row)

    return rows

def searchTeamByName(conn, name):
    c = conn.cursor()
    sql = "SELECT * FROM Team WHERE t_name LIKE \'%"
    sql += name
    sql += "%\'"
    c.execute(sql)

    rows = c.fetchall()

    for row in rows:
        print(row)

    return rows

def searchTeamByID(conn, id):
    c = conn.cursor()
    sql = "SELECT * FROM Team WHERE t_teamID = \'"
    sql += id
    sql += "\'"
    c.execute(sql)

    rows = c.fetchall()

    for row in rows:
        print(row)

    return rows

def searchSchoolByName(conn, name):
    c = conn.cursor()
    sql = "SELECT * FROM School WHERE sc_name LIKE \'%"
    sql += name
    sql += "%\'"
    c.execute(sql)

    rows = c.fetchall()

    for row in rows:
        print(row)

def searchSchoolByID(conn, id):
    c = conn.cursor()
    sql = "SELECT * FROM School WHERE sc_schoolID = \'"
    sql += id
    sql += "\'"
    c.execute(sql)

    rows = c.fetchall()

    for row in rows:
        print(row)


#display players on a Team
def displayPlayersOnTeam(conn, id):
    c = conn.cursor()
    sql = "SELECT * FROM Player WHERE p_teamID =\'"
    sql += id
    sql += "\'"
    c.execute(sql)

    rows = c.fetchall()

    for row in rows:
        print(row)

#creates table
def createTable(conn, choice):
    sql = choice
    try:
        c = conn.cursor()
        c.execute(create_table_sql)
    except Error as e:
        print(e)

#view scores for a game
def viewScores(conn, home, away):
    c = conn.cursor()
    sql = "SELECT st_matchup, st_score1, st_score2 FROM TeamStats WHERE st_hometeamID =\'"
    sql += home
    sql += "\' AND st_awayteamID = \'"
    sql += away
    sql += "\'"
    c.execute(sql)

    rows = c.fetchall()

    for row in rows:
        print(row)

def viewHoopScores(conn):
    c = conn.cursor()
    sql = "SELECT * FROM hoopgames ORDER BY date"
    c.execute(sql)

    rows = c.fetchall()

    for row in rows:
        print(row)

    return rows

def viewFootballScores(conn):
    c = conn.cursor()
    sql = "SELECT * FROM footballgames ORDER BY date"
    c.execute(sql)

    rows = c.fetchall()

    for row in rows:
        print(row)

    return rows

#input functions for various tables
def inputPlayer(conn, name, id, teamid, sport, height, weight, position):
    c = conn.cursor()
    sql = "INSERT INTO Player (p_name, p_playerID, p_teamID, p_sport, p_height, p_weight, p_position) VALUES (\'"
    sql += name
    sql += "\',\'"
    sql += id
    sql += "\',\'"
    sql += teamid
    sql += "\',\'"
    sql += sport
    sql += "\',\'"
    sql += height
    sql += "\',\'"
    sql += weight
    sql += "\',\'"
    sql += position
    sql += "\')"
    c.execute(sql)

def inputSchedule(conn, teamid, sport, schoolid, matchup, week, location):
    c = conn.cursor()
    sql = "INSERT INTO Schedule VALUES (\'"
    sql += teamid
    sql += "\',\'"
    sql += sport
    sql += "\',\'"
    sql += schoolid
    sql += "\',\'"
    sql += matchup
    sql += "\',\'"
    sql += week
    sql += "\',\'"
    sql += location
    sql += "\')"
    c.execute(sql)

def inputSchool(conn, schoolid, city, state, mascot, name):
    c = conn.cursor()
    sql = "INSERT INTO School VALUES (\'"
    sql += schoolid
    sql += "\',\'"
    sql += city
    sql += "\',\'"
    sql += state
    sql += "\',\'"
    sql += mascot
    sql += "\',\'"
    sql += name
    sql += "\')"
    c.execute(sql)

def inputTeam(conn, name, teamid, sport, league, division, schoolid):
    c = conn.cursor()
    sql = "INSERT INTO Team VALUES (\'"
    sql += name
    sql += "\',\'"
    sql += teamid
    sql += "\',\'"
    sql += sport
    sql += "\',\'"
    sql += league
    sql += "\',\'"
    sql += division
    sql += "\',\'"
    sql += schoolid
    sql += "\')"
    c.execute(sql)

def inputCoach(conn, name, coachid, teamid, sport, league, division, schoolid):
    c = conn.cursor()
    sql = "INSERT INTO Coach VALUES (\'"
    sql += name
    sql += "\',\'"
    sql += coachid
    sql += "\',\'"
    sql += teamid
    sql += "\',\'"
    sql += sport
    sql += "\',\'"
    sql += league
    sql += "\',\'"
    sql += division
    sql += "\',\'"
    sql += schoolid
    sql += "\')"
    c.execute(sql)

def inputBasketballTeamStats(conn, teamid, points, rebounds, assists, steals, blocks, turnovers):
    c = conn.cursor()
    sql = "INSERT INTO Basketball VALUES (\'"
    sql += teamid
    sql += "\',\'"
    sql += points
    sql += "\',\'"
    sql += rebounds
    sql += "\',\'"
    sql += assists
    sql += "\',\'"
    sql += steals
    sql += "\',\'"
    sql += blocks
    sql += "\',\'"
    sql += turnovers
    sql += "\')"
    c.execute(sql)

def inputBasketbalPlayerStats(conn, playerid, rebounds, assists, steals, blocks, turnovers, points):
    c = conn.cursor()
    sql = "INSERT INTO BPlayerStats VALUES (\'"
    sql += playerid
    sql += "\',\'"
    sql += rebounds
    sql += "\',\'"
    sql += assists
    sql += "\',\'"
    sql += steals
    sql += "\',\'"
    sql += blocks
    sql += "\',\'"
    sql += turnovers
    sql += "\',\'"
    sql += points
    sql += "\')"
    c.execute(sql)

def inputFootballTeamStats(conn, teamid, passyards, rushyards, tackles, receptions, sacks, ointerceptions, forcefumbles, touchdowns, recievingyards, fumbles, dinterceptions):
    c = conn.cursor()
    sql = "INSERT INTO Football VALUES (\'"
    sql += teamid
    sql += "\',\'"
    sql += passyards
    sql += "\',\'"
    sql += rushyards
    sql += "\',\'"
    sql += tackles
    sql += "\',\'"
    sql += receptions
    sql += "\',\'"
    sql += sacks
    sql += "\',\'"
    sql += ointerceptions
    sql += "\',\'"
    sql += forcefumbles
    sql += "\',\'"
    sql += touchdowns
    sql += "\',\'"
    sql += recievingyards
    sql += "\',\'"
    sql += fumbles
    sql += "\',\'"
    sql += dinterceptions
    sql += "\')"
    c.execute(sql)

def inputFootballPlayerStats(conn, playerid, passyards, rushyards, receptions, ointerceptions, touchdowns, recievingyards, fumbles, dinterceptions, sacks, tackles, forcefumbles):
    c = conn.cursor()
    sql = "INSERT INTO FPlayerStats VALUES (\'"
    sql += playerid
    sql += "\',\'"
    sql += passyards
    sql += "\',\'"
    sql += rushyards
    sql += "\',\'"
    sql += receptions
    sql += "\',\'"
    sql += ointerceptions
    sql += "\',\'"
    sql += touchdowns
    sql += "\',\'"
    sql += recievingyards
    sql += "\',\'"
    sql += fumbles
    sql += "\',\'"
    sql += dinterceptions
    sql += "\',\'"
    sql += sacks
    sql += "\',\'"
    sql += tackles
    sql += "\',\'"
    sql += forcefumbles
    sql += "\')"
    c.execute(sql)

def inputTeamStats(conn, homeid, awayid, sport, matchup, score1, score2):
    c = conn.cursor()
    sql = "INSERT INTO TeamStats VALUES (\'"
    sql += homeid
    sql += "\',\'"
    sql += awayid
    sql += "\',\'"
    sql += sport
    sql += "\',\'"
    sql += matchup
    sql += "\',\'"
    sql += score1
    sql += "\',\'"
    sql += score2
    sql += "\')"
    c.execute(sql)

def input(conn, argument):
    c = conn.cursor()

    switcher = {
            1: inputPlayer,
            2: inputSchedule,
            3: inputSchool,
            4: inputTeam,
            5: inputCoach,
            6: inputBasketballTeamStats,
            7: inputBasketbalPlayerStats,
            8: inputFootballTeamStats,
            9: inputFootballPlayerStats,
            10: inputTeamStats
            }

    func = switcher.get(argument, "Invalid Option")
    c.execute(func)

def main():
    print ("Establishing connection.")
    conn = createConnection("src/statistics.db")
    viewScores(conn, "15", "20")
    #inputPlayer(conn, "RICO NUCUM", "101", "21", "BASKETBALL", "73", "200", "PG")
    #inputSchedule(conn, "21", "BASKETBALL", "11", "2018-01-01", "1", "AWAY")
    #inputSchool(conn, "11", "FAIRFIELD", "CA", "BLUEFACES", "BENJAMIN")
    #inputTeam(conn, "SENDORS", "21", "BASKETBALL", "VALLEY", "2", "11")
    #inputCoach(conn, "ALSENDOR NUCUM", "21", "21", "BASKETBALL", "VALLEY", "2", "11")
    #inputBasketballTeamStats(conn, "21", "99", "32", "21", "5", "7", "8")
    #inputBasketbalPlayerStats(conn, "101", "5", "2", "3", "4", "1", "21")
    #inputFootballTeamStats(conn, "11", "400", "230", "27", "30", "2", "1", "4", "3", "350", "1", "1")
    #inputFootballPlayerStats(conn, "51", "200", "100", "0", "2", "5", "0", "2", "0", "0", "0", "0")
    #inputTeamStats(conn, "11", "12", "FOOTBALL", "2018-01-22", "21", "21")
    conn.commit()
    closeConnection(conn)

main()

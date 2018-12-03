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
    sql = "SELECT * FROM Player WHERE p_name = \'"
    sql += name
    sql += "\'"
    c.execute(sql)

    rows = c.fetchall()

    for row in rows:
        print(row)

def searchPlayerByID(conn, id):
    c = conn.cursor()
    sql = "SELECT * FROM Player WHERE p_playerID = \'"
    sql += id
    sql += "\'"
    c.execute(sql)

    rows = c.fetchall()

    for row in rows:
        print(row)

def searchCoachByName(conn, name):
    c = conn.cursor()
    sql = "SELECT * FROM Player WHERE c_name = \'"
    sql += name
    sql += "\'"
    c.execute(sql)

    rows = c.fetchall()

    for row in rows:
        print(row)

def searchCoachByID(conn, id):
    c = conn.cursor()
    sql = "SELECT * FROM Player WHERE c_coachID = \'"
    sql += id
    sql += "\'"
    c.execute(sql)

    rows = c.fetchall()

    for row in rows:
        print(row)

def searchTeamByName(conn, name):
    c = conn.cursor()
    sql = "SELECT * FROM Team WHERE t_name = \'"
    sql += name
    sql += "\'"
    c.execute(sql)

    rows = c.fetchall()

    for row in rows:
        print(row)

def searchTeamByID(conn, id):
    c = conn.cursor()
    sql = "SELECT * FROM Team WHERE t_teamID = \'"
    sql += id
    sql += "\'"
    c.execute(sql)

    rows = c.fetchall()

    for row in rows:
        print(row)

def searchSchoolByName(conn, name):
    c = conn.cursor()
    sql = "SELECT * FROM School WHERE sc_name = \'"
    sql += name
    sql += "\'"
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

#input functions for various tables
#def inputPlayer(conn):

#def inputSchedule(conn):

#def inputSchool(conn):

#def inputTeam(conn):

#def inputCoach(conn):

#def inputBasketballTeamStats(conn):

#def inputBasketbalPlayerlStats(conn, playerID):


def main():
    print ("Establishing connection.")
    conn = createConnection("src/statistics.db")
    viewScores(conn, "1", "2")
    closeConnection(conn)

main()

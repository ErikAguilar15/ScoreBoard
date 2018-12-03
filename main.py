#!/usr/bin/python

import sqlite3
from sqlite3 import Error

def createConnection(db_file):
    return sqlite3.connect(db_file);

def closeConnection(conn)
    conn.close()

def executeQuery(conn, query)
    c = conn.cursor()
    c.execute(query)
    c.commit()

    rows = cursor.fetchall()

    for row in rows:
        print(row)

def createTable(conn, sql)
    try:
        c = conn.cursor()
        c.execute(create_table_sql)
    except Error as e:
        print(e)


def main():
    print ("Establishing connection.")
    conn = createConnection("src/statistics.db")
    closeConnection()

main()

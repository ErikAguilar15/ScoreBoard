#!/usr/bin/python

import sqlite3
from sqlite3 import Error

def createConnection(db_file):
    return sqlite3.connect(db_file);

def main():
    conn = createConnection("src/statistics.db")
    cursor = conn.cursor
    db.close()

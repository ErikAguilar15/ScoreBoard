#!/usr/bin/python

import sqlite3
from sqlite3 import Error

def createConnection(db_file):
    conn = sqlite3.connect(db_file);

def main():
    createConnection("src/statistics.db")

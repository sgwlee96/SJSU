import os
from configparser import ConfigParser
from mysql.connector import MySQLConnection, Error
from DATA225utils import read_config

def makedb():
    config = read_config('./system.ini')
    conn = MySQLConnection(**config)

    cursor = conn.cursor()
    cursor.execute("CREATE DATABASE rair_hospital")

    cursor.close()
    conn.close()

if __name__ == "__main__":
    makedb()
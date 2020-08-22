import sqlite3,csv
from sqlite3 import Error
from datetime import datetime,timedelta
from flask import g,sessions



class Config(object):
 
    TESTING = True
    DEBUG = True
    dev='development'
    FLASK_ENV=dev
    SECRET_KEY = 'Sm9obiBTY2hyb20ga2lja3MgYXNz'
    
    
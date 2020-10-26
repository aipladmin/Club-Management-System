# controller.py

import sqlite3
import random
import string
import sqlite3

from flaskext.mysql import *
from functools import wraps

from flask import *

mysql = MySQL()

app = Flask(__name__)
app.config['MYSQL_DATABASE_USER'] = 'admin'
app.config['MYSQL_DATABASE_PASSWORD'] = 'MiloniMadhav'
app.config['MYSQL_DATABASE_DB'] = 'bcms'
app.config['MYSQL_DATABASE_HOST'] =  'contra.cjrbdmxkv84s.ap-south-1.rds.amazonaws.com'
mysql.init_app(app)

def mysql_query(sql):
    print(sql)
    connection = mysql.connect()
    cursor = connection.cursor()
    if sql.strip().split(' ')[0].lower() == "select" :
        
        cursor.execute(sql)
        print(cursor._executed)
        
        columns = [column[0] for column in cursor.description]
        results = []
        for row in cursor.fetchall():
            results.append(dict(zip(columns, row)))
        data = results
        cursor.close()
        connection.close()
        return data
    if sql.strip().split(' ')[0].lower() != "select" :
        cursor.execute(sql)
        print(cursor._executed)
        
        connection.commit()
        cursor.close()
        connection.close()
        return None

# DECORATORS
def login_required(f):
    @wraps(f)
    def wrap(*args, **kwargs):
        if 'email' in session and 'role' in session:
            return f(*args, **kwargs)
        else:
            # flash('You need to login first')
            return redirect(url_for('auth.authenticate'))
    return wrap
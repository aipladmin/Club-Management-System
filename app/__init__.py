import os
import sqlite3
from flask import Flask

from flaskext.mysql import MySQL

from .config import Config


def create_app():
    app = Flask(
        __name__,
        instance_relative_config=True,
        static_url_path=''
    )


    app.config.from_object(Config)

    

    mysql = MySQL()
    app.config['MYSQL_DATABASE_USER'] = 'admin'
    app.config['MYSQL_DATABASE_PASSWORD'] = 'adminadmin'
    app.config['MYSQL_DATABASE_DB'] = 'finrep'
    app.config['MYSQL_DATABASE_HOST'] =  'aipldb.cttdwedcfzhs.ap-south-1.rds.amazonaws.com'
    mysql.init_app(app)
    
    #ADMIN BLUEPRINT
    from app.entities.admin import (
        admin
    )
    app.register_blueprint(admin.admin)

    #USER BLUEPRINT
    from app.entities.user import (
        user
    )
    app.register_blueprint(user.user)
    

    return app


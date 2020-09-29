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

    #AUTH BLUEPRINT
    from app.entities.auth import(
        auth
    )
    app.register_blueprint(auth.auth)
    
    #ADMIN BLUEPRINT
    from app.entities.admin import (
        admin
    )
    app.register_blueprint(admin.admin)

    #USER BLUEPRINT
    from app.entities.user import (
        member
    )
    app.register_blueprint(member.member)
    

    return app


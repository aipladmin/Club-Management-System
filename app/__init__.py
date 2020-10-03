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

    #MANAGER BLUEPRINT
    from app.entities.manager import(
        manager
    )
    app.register_blueprint(manager.manager)

    #EMPLOYEE BLUEPRINT
    from app.entities.employee import(
        employee
    )
    app.register_blueprint(employee.employee)

    #MEMBER BLUEPRINT
    from app.entities.member import (
        member
    )
    app.register_blueprint(member.member)
    

    return app


from flask import Flask, render_template, Blueprint, request, g, session, redirect, url_for
from functools import wraps

from ..controller import *
manager = Blueprint('manager',
                __name__,
                template_folder="manager_templates",
                static_folder="manager_static",
                url_prefix='/manager')

@manager.route('/')
@manager.route('/index')
def index():
    # testing()
    return render_template('manager_index.html')
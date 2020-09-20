from flask import Flask, render_template, Blueprint, request, g, session, redirect, url_for
from functools import wraps

from ..controller import *
user = Blueprint('user',
                __name__,
                template_folder="user_templates",
                static_folder="user_templates",
                url_prefix='/user')

# @admin.route('/index')
# def index():
#     testing()
#     return "render_template('index.html')"
@user.route('/')
@user.route('/index')
def index():
    return render_template('user_index.html')

@user.route('/test')
def test():
    data = mysql_query("select * from user_type_master;")
    print(data)
    return "test Data"



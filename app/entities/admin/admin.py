from flask import Flask, render_template, Blueprint, request, g, session, redirect, url_for
from functools import wraps

from ..controller import *
admin = Blueprint('admin',
                __name__,
                template_folder="admin_templates",
                static_folder="admin_static",
                url_prefix='/admin')

# @admin.route('/index')
# def index():
#     testing()
#     return "render_template('index.html')"

@admin.route('/')
@admin.route('/index')
def index():
    return render_template('admin_index.html')

@admin.route('/adminroles')
def adminroles():

    return render_template('test.html')

@admin.route('/adminrolescr',methods=['POST'])
def adminrolescr():
    if request.method=="POST":
        email = request.form['email']
        password = request.form['password']
        print(email,password)
        return "POST DATA"
    return "Data"




from flask import Flask, render_template, Blueprint, request, g, session, redirect, url_for
from functools import wraps

from ..controller import *
employee = Blueprint('employee',
                __name__,
                template_folder="employee_templates",
                static_folder="employee_static",
                url_prefix='/employee')

@employee.route('/')
@employee.route('/index')
def index():
    testing()
    return render_template('employee_index.html')
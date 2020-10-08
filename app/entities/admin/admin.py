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

@admin.route('/branch')
def branch():
    return render_template('admin_branch.html')

@admin.route('/addbranch',methods=["POST"])
def addbranch():
    if request.method=="POST":
        if "insert" in request.form:
            try:
                mysql_query('''INSERT INTO `bcms`.`branch_master`
                            (`branch_name`,
                            `branch_email`,
                            `Address_Line1`,
                            `Address_Line2`,
                            `Address_Line3`,
                            `area`,
                            `city`,
                            `state`,
                            `pincode`)
                            VALUES('{}','{}','{}','{}','{}','{}','{}','{}',{}); '''.format(request.form['branch_name'],request.form['email'],request.form['addr1'],request.form['addr2'],request.form['addr3'],request.form['area'],request.form['city'],request.form['state'],request.form['pincode']))
            except Exception as e:
                return str(e)

            return redirect(url_for("admin.branch"))




    return "hello there is an error! please fixx it bruh"


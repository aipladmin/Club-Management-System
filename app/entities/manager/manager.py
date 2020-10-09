from types import MethodDescriptorType
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

@manager.route('/personalinfo')
def personalinfo():
    data = mysql_query("select * from user_master where email ='{}'; ".format(session['email']))
    # print(data)
    return render_template('manager_personalinfo.html',data=data)

@manager.route('/personalinfoscr',methods=['POST'])
def personalinfoscr():
    bttn = request.form['bttn']
    print(bttn)
    mysql_query(''' UPDATE `bcms`.`user_master`
                    SET
                    `first_name` = '{}',
                    `middle_name` = '{}',
                    `last_name` = '{}',
                    `gender` = '{}',
                    `dob` = '{}',
                    `contact_no` = '{}',
                    `email` = '{}',
                    `password` = '{}',
                    `address_line_1` = '{}',
                    `address_line_2` = '{}',
                    `city` = '{}',
                    `state` = '{}',
                    `pincode` = '{}'
                    WHERE `UID` = {};  '''.format(
                        request.form['firstname'],request.form['middlename'],request.form['lastname'],
                        request.form['gender'],request.form['dob'],request.form['mobileno'],request.form['email'],
                        request.form['password'],request.form['addressline1'],request.form['addressline2'],
                        request.form['city'],request.form['state'],request.form['pincode'],request.form['bttn'] ) )
    return redirect(url_for('manager.personalinfo'))

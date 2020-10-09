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

    if session['role'].lower() == "admin":
        return redirect(url_for('admin.index'))
    if session['role'].lower() == "manager":
        return redirect(url_for('manager.index'))
    if session['role'].lower() == "member":
        return redirect(url_for('member.index'))
    if session['role'].lower() == "employee":
        return redirect(url_for('employee.index'))

@manager.route('/amenities',methods=['GET','POST'])
def amenities():
    if request.method == "POST":
        MANID = mysql_query("Select MANID from manager_master inner join user_master where user_master.email='{}'; ".format( session['email'] ))
        MANID = MANID[0]['MANID']
        if 'insert' in request.form:
            mysql_query("insert into amenities_master(MANID,Name,Description) values('{}','{}','{}'); ".format(MANID,request.form['name'],request.form['description'] ))
            print(MANID)
            return str(request.form['name'])
        if 'update' in request.form:
            mysql_query("update amenities_master SET Name='{}',Description='{}' where AMID={}; ".format( request.form['Name'],request.form['Description'],request.form['update'] ))
            
            return redirect(url_for('manager.amenities'))
        if 'delete' in request.form:
            mysql_query("delete from amenities_master where AMID={}; ".format( request.form['delete'] ))
            return redirect(url_for('manager.amenities'))
    data = mysql_query("select amenities_master.AMID,amenities_master.Name,amenities_master.Description from amenities_master inner join manager_master ON amenities_master.MANID=manager_master.MANID inner join user_master on user_master.UID = manager_master.UID where user_master.email='{}';".format(session['email']))
    # data=session['email']
    return render_template('manager_amenities.html',data=data)


from flask import Flask, render_template, Blueprint, request, g, session, redirect, url_for
from functools import wraps

from ..controller import *
member = Blueprint('member',
                __name__,
                template_folder="member_templates",
                static_folder="member_templates",
                url_prefix='/member')



@member.route('/')
@member.route('/index')
@login_required
def index():
    return render_template('member_index.html')

@member.route('/memberpersonalinfo',methods=['GET','POST'])
@login_required
def personalinfo():
    if request.method =="POST":
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
        flash("Personal Info Updated.")
        return redirect(url_for('member.personalinfo'))
    data = mysql_query("select * from user_master where email ='{}'; ".format(session['email']))
    # print(data)
    return render_template('member_personalinfo.html',data=data)

@member.route('/changepassword',methods=['GET','POST'])
@login_required
def changepassword():
    if request.method=="POST":
        oldpassword = request.form['oldpassword']
        newpassword = request.form['retypepassword']
        mysql_query("update user_master SET password='{}' where email='{}'; ".format(newpassword,session['email']))
        flash("Password Changed")
        return redirect(url_for('member.changepassword'))
    return render_template("member_cp.html")


@member.route('/test')
@login_required
def test():
    data = mysql_query("select * from user_type_master;")
    print(data)
    return "test Data"

@member.route('/Complaints')
@login_required
def complaints():
	return render_template('member_complaint.html')

@member.route('/Feedback')
@login_required
def feedback():
	return render_template('member_feedback.html')




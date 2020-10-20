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




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
@login_required
def index():
    # testing()
    return render_template('employee_index.html')

@employee.route('/leaveapplication',methods=['GET','POST'])
@login_required
def leaveapplication():
    if request.method=='POST':
        data = mysql_query("select employee_master.EID,employee_master.BID from emp_leave inner join employee_master on employee_master.EID=emp_leave.EID inner join branch_master on branch_master.BID = employee_master.BID inner join user_master on  user_master.UID=employee_master.UID where user_master.email='{}'; ".format(session['email']))
        EID = data[0]['EID']
        BID = data[0]['BID']
        mysql_query("insert into emp_leave(EID,BID,Start_date,End_Date,Description) values({},{},'{}','{}'); ".format(EID,BID,request.form['sdate']),request.form['edate'],request.form['description'])
        return str(BID)
    dt = mysql_query("select emp_leave.LID,emp_leave.Start_Date,emp_leave.End_Date,emp_leave.Status from emp_leave inner join employee_master on employee_master.EID=emp_leave.EID inner join branch_master on branch_master.BID = employee_master.BID inner join user_master on  user_master.UID=employee_master.UID where user_master.email='{}'; ".format(session['email']))
    return render_template('employee_leaveapplication.html',dt=dt)


@employee.route('/changepassword',methods=['GET','POST'])
@login_required
def changepassword():
    if request.method=="POST":
        oldpassword = request.form['oldpassword']
        newpassword = request.form['retypepassword']
        mysql_query("update user_master SET password='{}' where email='{}'; ".format(newpassword,session['email']))
        flash("Password Changed")
        return redirect(url_for('employee.changepassword'))
    return render_template("employee_cp.html")

@employee.route('/Complaints')
@login_required
def complaint_history():
    complaint_hist = mysql_query(''' SELECT 
                                        `employee_complaint`.`ECOMID`,
                                        `employee_complaint`.`EID`,
                                        `employee_complaint`.`BID`,
                                        `employee_complaint`.`Subject`,
                                        `employee_complaint`.`Description`,
                                        `employee_complaint`.`Timestamp`
                                    FROM
                                        `bcms`.`employee_complaint`;''')

    return render_template('employee_complaints.html',complaint_hist=complaint_hist)

@employee.route('/addComplaint',methods=["POST"])
@login_required
def addComplaint():
    if request.method=="POST":
        EID = mysql_query("Select employee_master.EID,employee_master.BID from employee_master INNER JOIN user_master ON user_master.UID = employee_master.UID where user_master.email='{}'; ".format( session['email'] ))
        EID,BID = EID[0]['EID'],EID[0]['BID']
        print(EID)
        mysql_query('''INSERT INTO `bcms`.`employee_complaint`(`BID`,`EID`,`Subject`,`Description`)
                        VALUES({},{},'{}','{}');'''.format(BID,EID,request.form['subject'],request.form['desc']))
    # NAME SHOULD BE SAME
    return render_template('thankyou_complaint.html')


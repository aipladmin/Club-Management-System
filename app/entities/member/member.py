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
def complaint_history():
    complaint_hist = mysql_query(''' SELECT 
                                        `user_complaint`.`CID`,
                                        `user_complaint`.`BID`,
                                        `user_complaint`.`MID`,
                                        `user_complaint`.`Subject`,
                                        `user_complaint`.`Description`,
                                        `user_complaint`.`Timestamp`
                                    FROM
                                        `bcms`.`user_complaint`;''')

    return render_template('member_complaint.html',complaint_hist=complaint_hist)


@member.route('/addComplaint',methods=["POST"])
@login_required
def addComplaint():
    if request.method=="POST":
        MID = mysql_query("Select member_master.MID,member_master.BID from member_master INNER JOIN user_master ON user_master.UID = member_master.UID where user_master.email='{}'; ".format( session['email'] ))
        MID,BID = MID[0]['MID'],MID[0]['BID']
        print(MID)
        mysql_query('''INSERT INTO `bcms`.`user_complaint`(`BID`,`MID`,`Subject`,`Description`)
                        VALUES({},{},'{}','{}');'''.format(BID,MID,request.form['subject'],request.form['desc']))
    # NAME SHOULD BE SAME
    return render_template('thankyou_complaint.html')

@member.route('/Feedbacks')
@login_required
def feedback_history():
    feedback_hist = mysql_query(''' SELECT 
                                        `feedback`.`FID`,
                                        `feedback`.`BID`,
                                        `feedback`.`MID`,
                                        `feedback`.`Subject`,
                                        `feedback`.`Description`,
                                        `feedback`.`Timestamp`
                                    FROM
                                        `bcms`.`feedback`;''')

    return render_template('member_feedback.html',feedback_hist=feedback_hist)


@member.route('/addFeedback',methods=["POST"])
@login_required
def addFeedback():
    if request.method=="POST":
        MID = mysql_query("Select member_master.MID,member_master.BID from member_master INNER JOIN user_master ON user_master.UID = member_master.UID where user_master.email='{}'; ".format( session['email'] ))
        MID,BID = MID[0]['MID'],MID[0]['BID']
        print(MID)
        mysql_query('''INSERT INTO `bcms`.`feedback`(`BID`,`MID`,`Subject`,`Description`)
                        VALUES({},{},'{}','{}');'''.format(BID,MID,request.form['subject'],request.form['desc']))
    # NAME SHOULD BE SAME
    return render_template('thankyou_feedback.html')

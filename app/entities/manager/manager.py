from flask import Flask, render_template, Blueprint, request, g, session, redirect, url_for
from functools import wraps
import random,math,datetime

from ..controller import *
manager = Blueprint('manager',
                __name__,
                template_folder="manager_templates",
                static_folder="manager_static",
                url_prefix='/manager')

@manager.route('/')
@manager.route('/index')
@login_required
def index():
    # testing()
    return redirect(url_for('manager.personalinfo'))

@manager.route('/changepassword',methods=['GET','POST'])
@login_required
def mchangepassword():
    if request.method=="POST":
        oldpassword = request.form['oldpassword']
        newpassword = request.form['retypepassword']
        mysql_query("update user_master SET password='{}' where email='{}'; ".format(newpassword,session['email']))
        flash("Password Changed")
        return redirect(url_for('manager.mchangepassword'))
    return render_template("manager_cp.html")



@manager.route('/personalinfo')
@login_required
def personalinfo():
    data = mysql_query("select * from user_master where email ='{}'; ".format(session['email']))
    # print(data)
    return render_template('manager_personalinfo.html',data=data)

@manager.route('/personalinfoscr',methods=['POST'])
@login_required
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


@manager.route('/approve_leaveapplications',methods=['GET','POST'])
@login_required
def approve_leaveapplications():
    if request.method=="POST":
        BID = mysql_query("select manager_master.BID from manager_master inner join user_master on user_master.UID=manager_master.UID where user_master.email='{}'; ".format(session['email']))
        BID = BID[0]["BID"]
        return str(BID)
    BID = mysql_query("select manager_master.BID from manager_master inner join user_master on user_master.UID=manager_master.UID where user_master.email='{}'; ".format(session['email']))
    BID = BID[0]["BID"]
    data = mysql_query("select *,emp_leave.Start_date as 'Start_Date' from employee_master inner join user_master on user_master.UID=employee_master.UID inner join emp_leave on emp_leave.BID=employee_master.BID where employee_master.BID={}; ".format(BID))
    print(data)
    return render_template('manager_leaveapplication.html',data=data)


    

@manager.route('/amenities',methods=['GET','POST'])
@login_required
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

############################################################# ADD & VIEW EMPLOYEES
@manager.route('/addemployees',methods=['GET','POST'])
@login_required
def add_employees():
    if request.method == "POST":
        UID =mysql_query("SELECT UID FROM user_master WHERE UID = (SELECT MAX(UID) FROM user_master); ")
        UID = UID[0]['UID']
        BID = mysql_query("Select BID from manager_master inner join user_master ON manager_master.UID=user_master.UID where user_master.email='{}'; ".format(session['email']))
        BID = BID[0]['BID']
        mysql_query('''insert into user_master
        (UTMID,first_name,middle_name,last_name,gender,email,password,dob,contact_no,address_line_1,address_line_2,address_area,city,state,country,pincode) values(3,'{}','{}','{}','{}','{}','{}','{}',{},'{}','{}','{}','{}','{}','{}',{});'''.format(
            request.form['firstname'],request.form['middlename'],request.form['lastname'],request.form['gender'],request.form['email'],request.form['password'],
            request.form['dob'],request.form['contactno'],request.form['adl1'],request.form['adl2'],request.form['area'],request.form['city'],request.form['state'],request.form['country'],
            request.form['pincode']))
        mysql_query(''' insert into employee_master(BID,UID,ECATID,Joining_Date,Salary) values({},{},{},'{}','{}');'''.format(BID,UID,request.form['category'],request.form['joiningdate'],request.form['salary']) )
        flash("Employee Added")
        return redirect(url_for('manager.add_employees'))
   
    employee_category = mysql_query("select * from employee_category")
    return render_template("manager_addemployees.html",employee_category=employee_category)

@manager.route('/viewemployees')
@login_required
def view_employees():
    return "addemployees"
############################################################### ADD & VIEW MEMBERS
@manager.route('/addmembers',methods=['GET','POST'])
@login_required
def add_members():
    if request.method =="POST":
        UID =mysql_query("SELECT UID FROM user_master WHERE UID = (SELECT MAX(UID) FROM user_master); ")
        UID = UID[0]['UID']
        BID = mysql_query("Select BID from manager_master inner join user_master ON manager_master.UID=user_master.UID where user_master.email='{}'; ".format(session['email']))
        BID = BID[0]['BID']
        mysql_query('''insert into user_master
        (UTMID,first_name,middle_name,last_name,gender,email,password,dob,contact_no,address_line_1,address_line_2,address_area,city,state,country,pincode) values(4,'{}','{}','{}','{}','{}','{}','{}',{},'{}','{}','{}','{}','{}','{}',{});'''.format(
            request.form['firstname'],request.form['middlename'],request.form['lastname'],request.form['gender'],request.form['email'],request.form['password'],
            request.form['dob'],request.form['contactno'],request.form['adl1'],request.form['adl2'],request.form['area'],request.form['city'],request.form['state'],request.form['country'],
            request.form['pincode']))
        mysql_query(''' insert into member_master(BID,UID,MEMID) values({},{},{});'''.format(BID,UID,request.form['membership']) )
        flash("Employee Added")
        return "POST"

    membershipdata = mysql_query("select * from membership_master;")    
    return render_template("manager_addmembers.html",membershipdata=membershipdata)




@manager.route('/empdetails')
@login_required
def empdetails():
    EmpDetail = mysql_query('''SELECT 
                                user_master.first_name,
                                user_master.middle_name,
                                user_master.last_name,
                                user_master.address_line_1,
                                user_master.address_line_2,
                                user_master.address_area,
                                user_master.city,
                                user_master.state,
                                user_master.pincode,
                                user_master.country,
                                employee_category.Description,
                                employee_master.Joining_Date,
                                employee_master.Leaving_Date,
                                employee_master.Time_period,
                                employee_master.Salary,
                                user_master.gender,
                                user_master.dob,
                                user_master.contact_no,
                                user_master.email,
                                CONCAT(user_master.first_name,
                                        ' ',
                                        user_master.middle_name,
                                        ' ',
                                        user_master.Last_name) AS 'fullname',
                                CONCAT(user_master.address_line_1,
                                        ', ',
                                        user_master.address_line_2,
                                        ', ',
                                        user_master.address_area,
                                        ',',
                                        user_master.city,
                                        ', ',
                                        user_master.state,
                                        ',',
                                        user_master.pincode,
                                        ',',
                                        user_master.country) AS 'address'
                            FROM
                                user_master
                                    INNER JOIN
                                employee_master ON employee_master.uid = user_master.uid
                                    INNER JOIN
                                employee_category ON employee_category.ecatid = employee_master.ecatid;''')
    return render_template('m_emp_details.html', EmpDetail=EmpDetail)


@manager.route('/memberdetails')
@login_required
def memberdetails():
    MemDetail = mysql_query('''SELECT 
                                membership_master.memid,
                                membership_master.description,
                                membership_master.duration,
                                user_master.gender,
                                user_master.dob,
                                user_master.contact_no,
                                user_master.email,
                                user_master.first_name,
                                user_master.middle_name,
                                user_master.last_name,
                                user_master.address_line_1,
                                user_master.address_line_2,
                                user_master.address_area,
                                user_master.city,
                                user_master.state,
                                user_master.pincode,
                                CONCAT(user_master.first_name,
                                        ' ',
                                        user_master.middle_name,
                                        ' ',
                                        user_master.Last_name) AS 'fullname',
                                CONCAT(user_master.address_line_1,
                                        ', ',
                                        user_master.address_line_2,
                                        ', ',
                                        user_master.address_area,
                                        ',',
                                        user_master.city,
                                        ', ',
                                        user_master.state,
                                        ',',
                                        user_master.pincode,
                                        ',',
                                        user_master.country) AS 'address'
                            FROM
                                user_master
                                    INNER JOIN
                                member_master ON member_master.uid = user_master.uid
                                    INNER JOIN
                                membership_master ON membership_master.memid = member_master.memid;''')

    return render_template('m_member_details.html', MemDetail=MemDetail)

@manager.route('/managerpayments',methods=['GET','POST'])
def managerpayments():
    pid = mysql_query('select PID,Method from payment_master')
    UID = mysql_query('''select user_master.UID,user_master.first_name from user_master where UTMID=4; ''')
    # GAFLA 2.0
    Pg = mysql_query("select PAYID, Amount from payment;")
    for x in Pg:
        # print(x)
        start_date = datetime.date(2019, 1, 1)
        end_date = datetime.date(2020, 10, 20)
        time_between_dates = end_date - start_date
        days_between_dates = time_between_dates.days
        random_number_of_days = random.randrange(days_between_dates)
        random_date = start_date + \
            datetime.timedelta(days=random_number_of_days)
        # print(random_date)
        rnum = int(random.randint(10, 30))
        amount = x['Amount']*(rnum/100)
        print(amount)
        mysql_query("insert into transaction(PAYID,Amount,t_date) values({},{},'{}'); ".format(x['PAYID'],int(amount),random_date))
    # high_roller=mysql_query('select PAYID from payment;')
    # for x in range(0,297):
    #     rand = random.randint(100000,400000)
    #     print(high_roller[x]['PAYID'])
    #     mysql_query('update payment set Amount={} where PAYID={};'.format(int(rand),int(x)))
    return render_template('/managerpayments.html',pid=pid,UID=UID)


from flask import Flask, render_template, Blueprint, request, g, session, redirect, url_for,flash
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

@admin.route('/changepassword',methods=['GET','POST'])
def changepassword():
    if request.method=="POST":
        oldpassword = request.form['oldpassword']
        newpassword = request.form['retypepassword']
        mysql_query("update user_master SET password='{}' where email='{}'; ".format(newpassword,session['email']))
        flash("Password Changed")
        return redirect(url_for('admin.changepassword'))
    return render_template("admin_cp.html")








@admin.route('/branch')
def branch():
    branchdetails=mysql_query(''' SELECT 
    branch_master.BID,
    branch_master.branch_name,
    branch_master.branch_email,
    CONCAT(branch_master.Address_Line1,
            ', ',branch_master.Address_Line2,
            ', ',branch_master.Address_Line3) AS 'address',
    branch_master.area,
    branch_master.city,
    branch_master.pincode,
    branch_master.state,
    
    CONCAT(user_master.first_name,
            ' ',
            user_master.last_name) AS 'fullname'
FROM
    branch_master
        INNER JOIN
    manager_master ON manager_master.bid = branch_master.bid
        INNER JOIN
    user_master ON user_master.uid = manager_master.uid; ''')

    return "hello there is an error! please fixx it bruh"

    return render_template('admin_branch.html',branchdetails=branchdetails)




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

        if "edit" in request.form:
            mysql_query('''UPDATE `bcms`.`branch_master`
                            SET
                            `branch_name` = '{}',
                            `branch_email` = '{}',
                            `Address_Line1` = '{}',
                            `Address_Line2` = '{}',
                            `Address_Line3` = '{}',
                            `area` = '{}',
                            `city` = '{}',
                            `state` = '{}',
                            `pincode` = {}
                            WHERE `BID` = {};
                            '''.format(request.form['branch_name'],request.form['email'],request.form['addr1'],request.form['addr2'],request.form['addr3'],request.form['area'],request.form['city'],request.form['state'],request.form['pincode'],request.form['edit']))


            return redirect(url_for("admin.branch"))


@admin.route('/empdetails')
def empdetails():
    EmpDetail = mysql_query('''SELECT 
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

    return render_template('emp_details.html',EmpDetail=EmpDetail)


@admin.route('/mandetails')
def mandetails():



    return render_template('manager_details.html')

    Man_Detail = mysql_query('''SELECT 
                                    branch_master.branch_name,
                                    manager_master.joining_date,
                                    manager_master.leaving_date,
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
                                    manager_master ON manager_master.uid = user_master.uid
                                        INNER JOIN
                                    branch_master ON manager_master.bid = branch_master.bid;''')

    return render_template('manager_details.html', Man_Detail=Man_Detail)




@admin.route('/memberdetails')
def memberdetails():
    MemDetail = mysql_query('''SELECT 
                                membership_master.memid,
                                membership_master.description,
                                membership_master.duration,
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
                                    member_master ON member_master.uid = user_master.uid
                                        INNER JOIN
                                    membership_master ON membership_master.memid = member_master.memid;''')
    
    
    return render_template('member_details.html',MemDetail=MemDetail)

from flask import Flask, render_template, Blueprint, request, g, session, redirect, url_for
from functools import wraps

from ..controller import *
auth = Blueprint('auth',
                __name__,
                template_folder="auth_templates",
                static_folder="auth_static",
                url_prefix='/auth')

@auth.route('/')
def authenticate():
    return render_template('login.html')

@auth.route('/loginscr',methods=['GET','POST'])
def loginscr():
    data = mysql_query('''SELECT 
                        COUNT(*) AS 'count', user_type_master.role
                    FROM
                        user_master
                            INNER JOIN
                        user_type_master ON user_type_master.UTMID= user_master.UTMID
                    WHERE
                        user_master.email = '{}' AND user_master.password = '{}'; '''.format(request.form['emailid'],request.form['password']) )
    if data[0]['count'] == 1:
        session['role'] = data[0]['role']
        session['email'] = request.form['emailid']
        return render_template('index.html')
    if data[0]['count'] == 0:
        return "Does not exsist"
    return "loginscr"


# LOGOUT CODE
@auth.route('/logout')
@login_required
def logout():
    session.pop('email', None)
    session.pop('role',None)
    return redirect(url_for('auth.authenticate'))

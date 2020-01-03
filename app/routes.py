from flask import render_template
from app import app
from datetime import datetime


@app.route('/')
@app.route('/index')
def index():
    return render_template('index.html', title='Home')


@app.route('/three')
def three():
    return render_template('three.html', title='Page 3',
                           time=datetime.utcnow())

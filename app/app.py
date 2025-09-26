import flask as fl
from flask import request, jsonify, render_template, url_for, redirect
app = fl.Flask(__name__)

#@app.route('/', methods=['GET'])
@app.route('/')
def home():
    return render_template("index.html")





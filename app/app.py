import flask as fl
from flask import request, jsonify, render_template, url_for, redirect
from .data import datos

app = fl.Flask(__name__)
# @app.route('/', methods=['GET'])


@app.route('/')
def index():

    return render_template("index.html", user_data=datos)


@app.route("/cv")
def cv():
    return "hola"

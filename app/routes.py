from flask import request, jsonify, render_template, url_for, redirect
from app import App
from app.data import datos

# @app.route('/', methods=['GET'])

@App.route('/')
def index():
    return render_template("index.html", user_data=datos)

@App.route("/cv")
def cv():
    return "hola"

@App.errorhandler(404)
def page_not_found(e):
    return render_template("404.html"), 404


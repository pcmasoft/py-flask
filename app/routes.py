from flask import request, jsonify, render_template, url_for, redirect
from app import App
from app.data import datos

# @app.route('/', methods=['GET'])

@App.route('/')
def index():
    return render_template("index.html", user_data=datos)

@App.route("/cv")
def cv():
    return render_template("cv.html", user_data=datos)

@App.route("/project")
def project():
    return render_template("project.html", user_data=datos)

@App.route("/experience")
def experience():
    return render_template("experience.html", user_data=datos)

@App.route("/education")
def education():
    return render_template("education.html", user_data=datos)

@App.errorhandler(404)
def page_not_found(e):
    return render_template("404.html"), 404


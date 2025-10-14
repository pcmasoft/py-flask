import flask as fl
from flask import request, jsonify, render_template, url_for, redirect
app = fl.Flask(__name__)

# @app.route('/', methods=['GET'])


@app.route('/')
def index():
    dato = {
        "titulo": "INDEX",
        "bienvenida": "Mi página de prueba"
    }
    return render_template("index.html", dato=dato)

@app.route("/cv")
def cv():
    return "hola"


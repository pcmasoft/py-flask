import flask as fl
from flask import request, jsonify, render_template, url_for, redirect
app = fl.Flask(__name__)

@app.route('/', methods=['GET'])
def home():
    return "<h1>  Funciona todo ok y en español! </h1>"



import flask as fl
from flask import request, jsonify, render_template, url_for, redirect
from data import datos
import sys

app = fl.Flask(__name__)
# @app.route('/', methods=['GET'])


@app.route('/')
def index():

    return render_template("index.html", user_data=datos)


@app.route("/cv")
def cv():
    return "hola"


if __name__ == "__main__":
    if len(sys.argv) > 1:
        app.run(host='127.0.0.1', port=5000,
                threaded=True, debug=True)  # debug mode
    else:
        app.run()  # release mode

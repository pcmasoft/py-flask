import sys
import flask as fl
from flask import request, jsonify, render_template, url_for, redirect
from flask_bootstrap import Bootstrap5
from data import datos
from config import Config

app = fl.Flask(__name__)
# @app.route('/', methods=['GET'])
app.config.from_object(Config)
bootstrap = Bootstrap5(app)


@app.route('/')
def index():

    return render_template("index.html", user_data=datos)


@app.route("/cv")
def cv():
    return "hola"


@app.errorhandler(404)
def page_not_found(e):
    return render_template("404.html"), 404


if __name__ == "__main__":
    if len(sys.argv) > 1:
        app.run(host='127.0.0.1', port=5000,
                threaded=True, debug=True)  # debug mode
    else:
        app.run()  # release mode

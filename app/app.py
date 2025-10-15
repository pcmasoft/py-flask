import sys
import app
from flask import Flask
from flask import request, jsonify, render_template, url_for, redirect, send_from_directory
from data import datos

app = Flask(__name__)

# @app.route('/', methods=['GET'])


@app.route('/')
def index():
    return render_template("index.html", user_data=datos)


@app.route("/downloads")
def downloads():
    return render_template("downloads.html", user_data=datos)


@app.route('/doc/<nombre_archivo>')
def descargar_archivo(nombre_archivo):
    return send_from_directory('doc', nombre_archivo, as_attachment=True)


@app.route("/project")
def project():
    return render_template("project.html", user_data=datos)


@app.route("/experience")
def experience():
    return render_template("experience.html", user_data=datos)


@app.route("/education")
def education():
    return render_template("education.html", user_data=datos)


@app.errorhandler(404)
def page_not_found(e):
    return render_template("404.html"), 404


if __name__ == "__main__":
    if len(sys.argv) > 1:
        app.run(host='127.0.0.1', port=5000,
                threaded=True, debug=True)  # debug mode
    else:
        app.run()  # release mode

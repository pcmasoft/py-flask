import app.flask_app

if __name__ == "__main__":
    #app.flask_app.app.run()
    app.flask_app.app.run(host = '127.0.0.1', port = 5000, threaded = True, debug = True)
    
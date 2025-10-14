import sys
from app import App

if __name__ == "__main__":
    if len(sys.argv) > 1:
        App.run(host='127.0.0.1', port=5000,
                threaded=True, debug=True)  # debug mode
    else:
        App.run()  # release mode

from app.app import *
#if __name__ == "__main__" :
	#app.run() #release mode
app.run(host = '127.0.0.1', port = 5000, threaded = True, debug = True) #debug mode

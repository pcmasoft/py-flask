import sys
import os

sys.path.append('C:\\server\\py-flask')

from flask_app import app as application
application.secret_key = 'anythingwished'
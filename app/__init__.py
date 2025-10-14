
import flask as fl
from flask_bootstrap import Bootstrap
from config import Config

App = fl.Flask(__name__)
App.config.from_object(Config)
bootstrap = Bootstrap(App)

from app import routes



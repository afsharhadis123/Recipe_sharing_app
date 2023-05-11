
# import requests
# requests.get(f"http://omdbapi.com?apikey={os.environ.get('OMDB_API_KEY')}&t=jaws").json()
import os
from flask import Flask, redirect

from routes.recipes_routes import recipes_routes
from routes.users_routes import users_routes
from routes.sessions_routes import sessions_routes

SECRET_KEY = os.environ.get("FLASK_SECRET_KEY", "pretend key for testing only")

app = Flask(__name__)
app.config['SECRET_KEY'] = SECRET_KEY

app.register_blueprint(recipes_routes, url_prefix='/resipes')
app.register_blueprint(users_routes, url_prefix='/users')
app.register_blueprint(sessions_routes, url_prefix='/sessions')

@app.route('/')
def index():
  return redirect('/recipe')
from dotenv import load_dotenv
load_dotenv()  # take environment variables from .env.

import requests
requests.get(f"http://omdbapi.com?apikey={os.environ.get('OMDB_API_KEY')}&t=jaws").json()
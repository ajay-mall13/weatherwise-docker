


    # app.py
from flask import Flask, render_template, request
import requests
import var
import os

app = Flask(__name__)

def get_weather(api_key, city):
    base_url = "http://api.openweathermap.org/data/2.5/weather"
    params = {
        'q': city,
        'appid': api_key,
        'units': 'metric'  
    }

    try:
        response = requests.get(base_url, params=params)
        if response.status_code == 200:
            return response.json()
        else:
            return None
    except:
        return None

@app.route('/', methods=['GET', 'POST'])
def index():
    weather_data = None
    error = None
    if request.method == 'POST':
        city = request.form['city']
        api_key = var.key
        weather_data = get_weather(api_key, city)
        if not weather_data:
            error = "Could not retrieve weather data. Please try again."
    return render_template('index.html', weather_data=weather_data, error=error)

if __name__ == "__main__":
    app.run(port=int(os.environ.get("PORT", 8080)), host='0.0.0.0', debug=True)


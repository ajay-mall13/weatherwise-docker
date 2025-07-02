# 🌦️ Weather App – HTML + CSS + python + Bootstrap + Docker + AWS cloud

This is a simple, lightweight **frontend weather web application** that fetches live weather data using the **OpenWeatherMap API**, built using HTML, CSS, and python — and deployed using **Docker** for portability and cloud readiness.

---

## 🚀 Live Demo

👉 [http://3.255.242.63:8080/](http://3.255.242.63:8080/)  
_(Hosted using Docker on a AWS cloud server)_

---

## ✅ Features

- 📡 Fetches real-time weather using **OpenWeather API**
- 🌐 User can enter any city name and view weather instantly
- ⚙️ Built with vanilla **HTML**, **CSS**, and **JavaScript**
- 🐳 Fully **Dockerized** for consistent deployment
- 🖥️ Hosted on a **remote Ubuntu server**

---

## 📁 Project Structure
```
weather-app/
├── index.html # Main UI page
├── style.css # Styling
├── app.py # JavaScript to fetch weather data
└── Dockerfile # Docker setup
```



## Setup and Usage

### Running Locally
1. Clone the repository:
   ```sh
   [git clone https://github.com/ajay-mall13/weatherwise-docker.git
   cd weatherwise-docker
   ```
2. Ensure `weatherwise-docker` exists in the project directory and contains quotes (one per line).
3. The server will start on `http://localhost:8080/`.
4. Test the API using:
   ```sh
   curl http://localhost:8080/
   ```

### Running with Docker
1. Build the Docker image:
   ```sh
   docker build -t weatherwise-docker:latest .
   ```

2. To check images
   ```sh
   docker images
   ```
3. Run the container:
   ```sh
   docker run -p 8080:8080 weatherwise-docker
   ```
4. Access the API at `<public-ip>:8080/`.
![Screenshot (1032)](https://github.com/user-attachments/assets/ae3de87d-dc76-47c4-85a7-2afad523b894)




## License
This project is licensed under the MIT License.





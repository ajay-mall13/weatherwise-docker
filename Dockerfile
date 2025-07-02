# Use the official Python image as the base image
FROM python:3.8-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the application files first (except large/ignored ones)
COPY . /app

# Install the required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that the app runs on
EXPOSE 8080

# Set environment variable to prevent Python from writing .pyc files
ENV PYTHONDONTWRITEBYTECODE=1

# Set environment variable to buffer stdout/stderr
ENV PYTHONUNBUFFERED=1

# Run the Flask app
CMD ["python", "app.py"]

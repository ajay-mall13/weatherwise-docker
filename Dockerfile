# Stage 1: Build and install dependencies
FROM python:3.8-slim AS builder

WORKDIR /app

# Copy app files and install dependencies into /app/python
COPY requirements.txt .
RUN pip install --no-cache-dir --target=/app/python -r requirements.txt

# Copy the full app code last
COPY . .

# Stage 2: Minimal runtime using distroless
FROM gcr.io/distroless/python3-debian12

# Copy python dependencies and app code from builder
COPY --from=builder /app/python /app/python
COPY --from=builder /app /app

# Set environment variables
ENV PYTHONPATH="/app/python"
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

WORKDIR /app

EXPOSE 8080

CMD ["app.py"]

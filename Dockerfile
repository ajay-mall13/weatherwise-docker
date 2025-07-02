# Stage 1: Build the app and install dependencies
FROM python:3.8-slim AS builder

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt --target=/app/deps

# Stage 2: Run the app using a minimal base image
FROM gcr.io/distroless/python3-debian12

COPY --from=builder /app/deps /app/deps
COPY --from=builder /app .

ENV PYTHONPATH="/app/deps"
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

EXPOSE 8080

CMD ["python", "app.py"]

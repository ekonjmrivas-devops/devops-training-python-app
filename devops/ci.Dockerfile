FROM python:3.6-slim
RUN apt-get update && \
    apt-get install -y --no-install-recommends make && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY src ./src
COPY tests ./tests
COPY Makefile .

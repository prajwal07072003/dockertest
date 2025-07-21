FROM python:3.9-slim

WORKDIR /app

COPY . /app

# Add these lines to fix DNS + slow pip issues
RUN apt-get update && apt-get install -y gcc libffi-dev libssl-dev \
    && pip install --no-cache-dir --default-timeout=100 -i https://pypi.org/simple Flask

CMD ["python", "app.py"]

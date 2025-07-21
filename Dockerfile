FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install --default-timeout=100 -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt

CMD ["python", "app.py"]

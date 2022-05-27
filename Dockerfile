FROM python:3.9.7-slim-buster

WORKDIR /usr/src/app
ENV FLASK_APP=app

COPY requirements.txt ./


RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install --no-cache-dir -r requirements.txt

COPY app.py ./

EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]


# 実行コマンド
# docker run -p 5000:5000 --name [任意のコンテナ名] ec-cube/flask-container:ver0.0.0 
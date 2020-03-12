FROM python:3.7.3-slim-stretch
LABEL Author="yusup"
LABEL E-mail="yusup@lsgrep.com"
LABEL version="0.0.1"
ENV PYTHONDONTWRITEBYTECODE 1
RUN apt update && apt install gcc unixodbc-dev default-libmysqlclient-dev g++ -y
RUN mkdir /app
WORKDIR /app
COPY . /app/
RUN pip install --upgrade pip && pip install -r requirements.txt

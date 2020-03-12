FROM python:3.7.3-slim-stretch
LABEL Author="yusup"
LABEL E-mail="yusup@lsgrep.com"
LABEL version="0.0.1"
ENV PYTHONDONTWRITEBYTECODE 1
RUN apt update &&  apt install gcc g++ postgresql-client unixodbc-dev libpng-dev default-libmysqlclient-dev -y

# add packages
RUN pip install --upgrade setuptools
RUN pip install --upgrade pip
RUN pip install cython
RUN pip install tensorflow
RUN pip install matplotlib
RUN pip install pandas
RUN pip install numpy
RUN pip install seaborn
RUN pip install mysqlclient
RUN pip install psycopg2
RUN pip install sqlalchemy

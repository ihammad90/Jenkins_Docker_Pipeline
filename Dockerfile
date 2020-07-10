FROM continuumio/anaconda3:4.4.0
MAINTAINER UNP, https://unp.education
COPY ./config.py /usr/local/python/
COPY ./houseprice.csv /usr/local/python/
COPY ./pipeline.py /usr/local/python/
COPY ./predict.py /usr/local/python/
COPY ./preprocessors.py /usr/local/python/
COPY ./requirements.txt /usr/local/python/
COPY ./training.py /usr/local/python/
COPY ./X_test.csv /usr/local/python/
COPY ./X_train.csv /usr/local/python/
COPY ./y_test.csv /usr/local/python/
COPY ./y_train.csv /usr/local/python/
EXPOSE 5000
WORKDIR /usr/local/python/
RUN pip install --no-cache-dir -r requirements.txt
cmd python training.py

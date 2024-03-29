FROM python:3.7-alpine
MAINTAINER codevated apps ltd

ENV PYTHONUNBUFFERED ""

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user

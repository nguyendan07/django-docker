# pull official base image
FROM python:3.8.2-alpine

ADD . /djdocker

WORKDIR /djdocker

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
# RUN pip install -r requirements.txt
RUN pip install -U pip pipenv
RUN pipenv install --system --deploy
# RUN python manage.py collectstatic --noinput

EXPOSE 5000

# pull official base image
FROM python:3.8.2-alpine

ADD . /djdocker

WORKDIR /djdocker

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install psycopg2 dependencies
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev

RUN pip install --upgrade pip
# RUN pip install -r requirements.txt
RUN pip install -U pip pipenv
RUN pipenv install --system --deploy

EXPOSE 5000

# run entrypoint.sh
ENTRYPOINT ["/djdocker/entrypoint.sh"]

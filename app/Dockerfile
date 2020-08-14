FROM python:3.8-slim-buster as builder

## install dependencies
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
        netcat-openbsd \
        gcc \
        libpq-dev \
    apt-get clean

FROM builder

SHELL ["/bin/bash", "-c"]

ENV APP_DIR=/opt/app_name

COPY requirements.txt $APP_DIR/requirements.txt
COPY setup.cfg $APP_DIR/setup.cfg
COPY setup.py $APP_DIR/setup.py

WORKDIR $APP_DIR

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install -e .

EXPOSE 5000

ENTRYPOINT ["/bin/bash", "-c"]

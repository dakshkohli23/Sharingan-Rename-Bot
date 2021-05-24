FROM ubuntu:20.04


RUN mkdir ./app
RUN chmod 777 ./app
WORKDIR ./app

RUN apt -qq update

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Kolkata

RUN pip install ffmpeg-python

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .

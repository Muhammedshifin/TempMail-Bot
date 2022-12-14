FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
COPY . /app
WORKDIR /app
COPY requirements.txt
RUN pip3 install -U -r requirements.txt
COPY . . 
CMD python3 main.py

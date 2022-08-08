FROM ubuntu:20.04

RUN apt update && apt upgrade -y

RUN apt install python3 -y

RUN apt install python3-pip -y

RUN apt install wget -y

RUN pip3 install amino.py

COPY . .

RUN chmod +x start.sh

CMD ["bash","start.sh"]

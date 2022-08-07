FROM ubuntu:20.04

RUN apt update && apt upgrade -y

RUN apt install python3 -y

RUN apt install python3-pip -y

RUN apt install wget -y

RUN pip3 install amino.py

RUN wget https://raw.githubusercontent.com/69root69/warp/master/wp-plus.py

RUN chmod +x start.sh

CMD ["bash","start.sh"]

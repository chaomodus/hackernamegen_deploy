FROM python:2.7
ADD . /deploy
WORKDIR /deploy
RUN cd /deploy && git clone https://github.com/chaomodus/hackernamegen && cd hackernamegen && git submodule init && git submodule update
RUN pip install -r requirements.txt

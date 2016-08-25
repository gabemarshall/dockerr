FROM python:3
RUN git clone https://github.com/mschwager/fierce.git
WORKDIR /fierce
RUN pip3 install -r requirements.txt
ADD default.txt /fierce/lists/
# docker run -it --rm fierce python3 fierce.py -h

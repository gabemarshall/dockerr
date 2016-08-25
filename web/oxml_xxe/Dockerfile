FROM ruby:2.1.5
MAINTAINER Gabe Marshall <gabemarshall@me.com>
RUN git clone https://github.com/BuffaloWill/oxml_xxe.git
WORKDIR /oxml_xxe
RUN gem install bundler
RUN bundle install


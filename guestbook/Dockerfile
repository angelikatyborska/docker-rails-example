FROM ruby:2.3.0

RUN apt-get update && apt-get -y install nodejs

COPY . /guestbook
WORKDIR /guestbook

CMD bin/rails s
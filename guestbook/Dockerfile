FROM ruby:2.3.0

RUN apt-get update && apt-get -y install nodejs

RUN adduser --disabled-password --system guestbook

COPY . /home/guestbook/app
RUN chown -R guestbook: /home/guestbook/app

USER guestbook
WORKDIR /home/guestbook/app

CMD bin/rails s
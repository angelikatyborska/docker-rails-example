FROM ruby:2.3.0

RUN apt-get update && apt-get -y install nodejs

ENV GEM_HOME /guestbook/.bundle
ENV BUNDLE_PATH="$GEM_HOME" \
	BUNDLE_BIN="$GEM_HOME/bin" \
	BUNDLE_APP_CONFIG="$GEM_HOME"
ENV PATH $BUNDLE_BIN:$PATH

WORKDIR /guestbook

CMD rm -f tmp/pids/* && bin/rails s -p 3000 -b '0.0.0.0'
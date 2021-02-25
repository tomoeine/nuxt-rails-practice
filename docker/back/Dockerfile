FROM ruby:3.0-slim

RUN apt-get update -qq \
  && apt-get install -y build-essential default-libmysqlclient-dev libcurl4-openssl-dev \
  && rm -rf /var/lib/apt/lists/* \
  && gem update
WORKDIR /app
COPY ./back/Gemfile /app/Gemfile
COPY ./back/Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY ./back /app

COPY ./docker/back/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 8000

CMD ["rails", "server", "-b", "0.0.0.0"]
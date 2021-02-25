FROM node:14-slim

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

# https://superuser.com/questions/1423486/issue-with-fetching-http-deb-debian-org-debian-dists-jessie-updates-inrelease/1423685
RUN printf "deb http://archive.debian.org/debian/ jessie main\ndeb-src http://archive.debian.org/debian/ jessie main\ndeb http://security.debian.org jessie/updates main\ndeb-src http://security.debian.org jessie/updates main" > /etc/apt/sources.list

RUN apt-get update -qq  \
  && rm -rf /var/lib/apt/lists/*

ENV TZ Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY ./front/package.json /app/package.json
COPY ./front/yarn.lock /app/yarn.lock

RUN yarn install
ENV HOST 0.0.0.0

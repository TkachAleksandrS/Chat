FROM node:12
WORKDIR /srv/app

RUN yarn install

# Laravel-echo-server
RUN yarn global add --prod --no-lockfile laravel-echo-server \
    && yarn cache clean

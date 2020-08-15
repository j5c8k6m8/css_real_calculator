FROM node:13-alpine
WORKDIR /app

RUN npm config set user 0
RUN npm config set unsafe-perm true
RUN npm -g install node-sass
RUN npm -g install pug
RUN npm -g install pug-cli

CMD [ "tail", "-f", "/dev/null" ]

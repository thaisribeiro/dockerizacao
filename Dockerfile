FROM node:14-alpine as base

WORKDIR /src
COPY package.json  ./src
EXPOSE 3000

FROM base as dev
ENV NODE_ENV=development
RUN npm install -g nodemon && npm install
COPY . /src
CMD ["nodemon", "./bin/www"]
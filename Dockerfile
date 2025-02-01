FROM node:23-alpine3.20

WORKDIR /app

ADD package.json /app

RUN npm install

COPY . /app

RUN npm run build

CMD ["npm", "run", "start:prod"]

EXPOSE 3000

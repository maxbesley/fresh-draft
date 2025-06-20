FROM node:22

WORKDIR /node

COPY app/package.json .

RUN npm install

COPY app/server.js .

EXPOSE 9000

CMD ["npm", "start"]

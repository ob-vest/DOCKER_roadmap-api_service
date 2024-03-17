FROM node:20-alpine

WORKDIR /app/

COPY package*.json ./
RUN npm install

COPY . /app/

COPY ./entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]

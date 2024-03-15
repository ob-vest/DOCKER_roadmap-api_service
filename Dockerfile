FROM node:14-alpine

WORKDIR /app/
COPY . /app/

COPY ./entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]

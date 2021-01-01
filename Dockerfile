FROM alpine:3.8

RUN mkdir /nodeapp

WORKDIR /nodeapp

COPY . .

RUN apk update &&  apk add nodejs &&  apk add npm

RUN npm install

EXPOSE 8080

CMD ["node" , "server.js"]

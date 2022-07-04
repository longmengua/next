FROM node:18-alpine

RUN mkdir -p ./docker/
WORKDIR /docker/
COPY . .
RUN yarn clean & yarn cache clean
RUN yarn install --network-timeout 60000 --verbose

EXPOSE 3000
CMD ["yarn","dev"]
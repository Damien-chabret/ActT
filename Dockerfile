FROM node:18 AS build

WORKDIR /ACTT

COPY package.json ./
COPY package-lock.json ./
COPY rollup.config.js ./
RUN npm install
COPY . ./

RUN npm run build

FROM nginx:1.19-alpine
COPY --from=build /ACTT/public /usr/share/nginx/html

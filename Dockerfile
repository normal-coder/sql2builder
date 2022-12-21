FROM node:16.18.0-alpine AS builder 
ADD . /app
WORKDIR /app/
RUN npm i && npm run build

FROM nginx:alpine-slim
LABEL maintainer="诺墨"
WORKDIR /var/www/html
COPY --from=builder /app/build /var/www/html
COPY ./default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

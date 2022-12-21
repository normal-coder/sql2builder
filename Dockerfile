FROM node:16.18.0-alpine AS builder 
ADD . /app
WORKDIR /app/
RUN npm i && npm run build

FROM nginx:alpine-slim
LABEL maintainer="诺墨"
LABEL org.opencontainers.image.source=https://github.com/normal-coder/sql2builder
LABEL org.opencontainers.image.description="将 SQL 转换为 Laravel 查询构造器 (Query Builder)"
LABEL org.opencontainers.image.licenses=Apache-2.0
WORKDIR /var/www/html
COPY --from=builder /app/build /var/www/html
COPY ./default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

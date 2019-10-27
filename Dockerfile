FROM node:current-alpine
WORKDIR /app
RUN apk --no-cache add git && \
    git clone https://github.com/715209/nginx-obs-automatic-low-bitrate-switching /app && \
    git checkout v1.6.4 && \
    cd /app && \
    npm install --production
CMD npm start

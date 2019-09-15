FROM node:current-alpine
WORKDIR /app
RUN apk --no-cache add git openssh-client && \
    git clone https://github.com/715209/nginx-obs-automatic-low-bitrate-switching /app && \
    cd /app && \
    npm install --production
CMD npm start

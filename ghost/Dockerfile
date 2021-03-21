FROM ghost:4.1.0-alpine
RUN apk update && \
    apk add mysql-client && \
    rm -f /var/cache/apk/*
COPY ./wait-for-it.sh /usr/local/bin/wait-for-it.sh
RUN chmod +x /usr/local/bin/wait-for-it.sh
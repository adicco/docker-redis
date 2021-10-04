FROM redis
COPY redis.conf /usr/local/etc/redis/redis.conf
COPY redis.replica.conf /usr/local/etc/redis/redis.replica.conf

WORKDIR /app

RUN apt update
RUN apt install dnsutils --yes

COPY docker_run ./

CMD [ "/app/docker_run" ]

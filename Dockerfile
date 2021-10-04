FROM redis
COPY redis.conf /usr/local/etc/redis/redis.conf
COPY redis.replica.conf /usr/local/etc/redis/redis.replica.conf

WORKDIR /app

RUN apt update
RUN apt install dnsutils --yes

# RUN apt-get update && apt-get install -y cron
# COPY example-crontab /etc/cron.d/example-crontab
# RUN chmod 0644 /etc/cron.d/example-crontab &&\
#     crontab /etc/cron.d/example-crontab

COPY docker_run ./

ENV REDIS_PORT ${REDIS_PORT:-6379}

EXPOSE $REDIS_PORT

CMD [ "/app/docker_run" ]

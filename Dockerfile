FROM node:7.1

MAINTAINER croef, changrong185@gmail.com

WORKDIR /root

RUN \
  npm config set registry https://registry.npm.taobao.org/ && \
  mkdir blog && cd blog && \
  # install hexo
  npm install hexo-cli -g


WORKDIR /root/blog/

VOLUME ["/root/blog/"]

COPY custom-update.sh /custom-update.sh
COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 4000

CMD [ "server" ]

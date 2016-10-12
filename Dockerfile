FROM alpine
MAINTAINER Tony Zhang

RUN rm -rf /etc/apk/repositories && echo $'http://mirrors.ustc.edu.cn/alpine/v3.4/community\nhttp://mirrors.ustc.edu.cn/alpine/v3.4/main' >> /etc/apk/repositories
RUN apk add --update \
    python \
    python-dev \
    py-pip \
  && pip install shadowsocks \
  && rm -rf /var/cache/apk/* 

ENTRYPOINT ["ssserver"]
CMD ["--help"]

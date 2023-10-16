FROM actualbudget/actual-server:23.10.0-alpine
RUN apk add --update wget curl sudo bash tini \
        && wget https://github.com/mikefarah/yq/releases/download/v4.25.1/yq_linux_amd64.tar.gz -O - |\
        tar xz && mv yq_linux_amd64 /usr/bin/yq

ADD ./docker_entrypoint.sh /usr/local/bin/docker_entrypoint.sh
ADD check-web.sh /usr/local/bin/check-web.sh
RUN chmod a+x /usr/local/bin/*.sh
RUN chmod a+x *.sh

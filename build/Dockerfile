FROM alpine

ENV REPO_URI https://github.com/xmrig/xmrig-proxy.git
ENV DIST_PATH /xmrig-proxy

COPY root /

WORKDIR /build

CMD [ "/bin/sh", "/scripts/all.sh" ]

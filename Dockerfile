FROM ripcitysoftware/py-gitcrypt:latest
LABEL maintainer "chris.maki@ripcitysoftware.com"

COPY session.sh /usr/bin/session.sh
RUN apk add curl jq --update && \
    chmod +x /usr/bin/session.sh

ENTRYPOINT ["/usr/bin/session.sh"]

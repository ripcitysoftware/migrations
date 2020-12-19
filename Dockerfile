FROM ripcitysoftware/py-gitcrypt:latest
LABEL maintainer="chris.maki@ripcitysoftware.com"

COPY session.sh /usr/bin/session.sh
RUN apt-get update && \
    apt-get install jq -y && \
    chmod +x /usr/bin/session.sh

ENTRYPOINT ["/usr/bin/session.sh"]

FROM python:3.14-trixie

# https://github.com/nodesource/distributions?tab=readme-ov-file#installation-instructions
RUN apt-get update                                               \
    && curl -fsSL https://deb.nodesource.com/setup_24.x | bash - \
    && apt-get install -y nodejs postgresql-client netcat-openbsd

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

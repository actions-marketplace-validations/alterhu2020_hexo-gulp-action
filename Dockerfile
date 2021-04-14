FROM node:12-buster-slim

LABEL version="1.0.6"
LABEL repository="https://github.com/alterhu2020/hexo-gulp-action"
LABEL homepage="https://seniortesting.club"
LABEL maintainer="alterhu2020 <alterhu2020@gmail.com>"

COPY entrypoint.sh /entrypoint.sh
COPY sync_deploy_history.js /sync_deploy_history.js

RUN apt-get update > /dev/null && \
    apt-get install -y git openssh-client > /dev/null ; \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

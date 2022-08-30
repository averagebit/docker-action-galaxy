FROM python:3.10-alpine
LABEL maintainer="averagebit <averagebit@pm.me>"

WORKDIR /github

RUN pip install --no-cache-dir ansible-core

CMD set -e pipefail; ansible-galaxy role import --token ${GALAXY_TOKEN} ${GITHUB_REPOSITORY%/*} ${GITHUB_REPOSITORY#*/}

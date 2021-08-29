FROM ubuntu:20.04
RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        git build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev \
        libsqlite3-dev libffi-dev libxml2-dev libxslt1-dev libre2-dev pkg-config \
        python3 python3-pip python3-dev && \
    pip3 install --no-binary lxml --upgrade git+https://github.com/ArchiveTeam/grab-site

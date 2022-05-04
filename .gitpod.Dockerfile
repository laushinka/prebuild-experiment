FROM gitpod/workspace-base

RUN sudo useradd --no-log-init --create-home --home-dir /home/foobar --shell /bin/bash --uid 33334 --gid 33333 foobar

USER foobar
WORKDIR /home/foobar
FROM gitpod/workspace-base

RUN sudo useradd -ms /bin/bash foobar
RUN USER foobar
RUN WORKDIR /home/foobar
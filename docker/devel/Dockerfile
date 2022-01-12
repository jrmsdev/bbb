FROM jrmsdev/bbb:base

LABEL maintainer="Jeremías Casteglione <jrmsdev@gmail.com>"
LABEL version="220112"

USER root:root
WORKDIR /root

ENV USER root
ENV HOME /root

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get clean -y \
	&& apt-get update -y \
	&& apt-get install -yy less

ARG BBB_UID=1000
ARG BBB_GID=1000

RUN groupadd -o -g ${BBB_GID} bbb \
	&& useradd -o -d /home/bbb -m -c 'bbb' -g ${BBB_GID} -u ${BBB_UID} bbb \
	&& chmod -v 0750 /home/bbb

ARG BBB_UMASK=0027

RUN printf 'umask %s\n' ${BBB_UMASK} >>/home/bbb/.profile
RUN printf "export PS1='%s '\n" '\u@\h:\W\$' >>/home/bbb/.profile

USER bbb:bbb
WORKDIR /home/bbb/src

ENV USER bbb
ENV HOME /home/bbb

CMD exec /bin/bash -il

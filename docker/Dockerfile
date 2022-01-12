FROM debian:bookworm-slim

LABEL maintainer="Jeremías Casteglione <jrmsdev@gmail.com>"
LABEL version="220112"

USER root:root
WORKDIR /root

ENV USER root
ENV HOME /root

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get clean -y \
	&& apt-get update -y \
	&& apt-get install -yy bash golang

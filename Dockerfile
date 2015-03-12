# Ubuntu Precise with useful packages
FROM ubuntu:precise

MAINTAINER Brandon Burton <brandon@inatree.org>

ENV DEBIAN_FRONTEND noninteractive

# Install packages needed to run build scripts and pkgsrc
RUN apt-get update -yqq
RUN apt-get --quiet --yes install python-software-properties
RUN add-apt-repository ppa:pdoes/ppa
RUN add-apt-repository ppa:brightbox/ruby-ng
RUN apt-get update -yqq
RUN apt-get --quiet --yes install ruby2.2
RUN apt-get --quiet --yes install build-essential libncurses-dev git cvs curl
RUN gem install bundler --no-ri --no-rdoc

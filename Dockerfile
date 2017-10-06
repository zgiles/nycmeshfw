FROM ubuntu:latest

MAINTAINER Zach Giles <zgiles@gmail.com>

RUN apt update
RUN apt install -y make gcc g++ zlib1g-dev libssl-dev wget subversion file python apt-utils binfmt-support vim apt-file xz-utils subversion zlib1g-dev gawk flex unzip bzip2 gettext build-essential libncurses5-dev libncursesw5-dev libssl-dev binutils cpp psmisc docbook-to-man gcc-multilib g++-multilib git

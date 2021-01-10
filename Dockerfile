FROM rocker/tidyverse:4.0.3

RUN apt-get update -qq && \
  apt-get install -y \
  default-jdk

RUN install2.r --error \
  --deps TRUE \
  arrow \
  bookdown \
  h2o \
  lightgbm \
  memuse \
  pals \
  viridis

RUN installGithub.r \
  --update FALSE \
  mvanhala/rutils


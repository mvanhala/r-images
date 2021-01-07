FROM rocker/tidyverse:4.0.3

RUN apt-get update -qq && \
  apt-get install -y \
  default-jdk

RUN install2.r --error \
  --deps TRUE \
  arrow \
  h2o \
  lightgbm

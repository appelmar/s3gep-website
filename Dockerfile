FROM ubuntu:xenial

RUN apt-get update && apt-get install -y mkdocs locales
RUN mkdir /shared

ENV LANG C.UTF-8  
ENV LC_ALL C.UTF-8 

WORKDIR /shared
CMD ["mkdocs", "build", "--clean"]
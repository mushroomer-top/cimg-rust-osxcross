FROM docker.io/cimg/rust:1.97.1

USER root
WORKDIR /osxcross
COPY osxcross-full.tar.xz .
RUN tar -xf osxcross-full.tar.xz \
    && rm osxcross-full.tar.xz
COPY with_osxcross.sh .

RUN apt-get update && apt-get install -y clang

USER circleci
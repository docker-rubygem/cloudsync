FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.4.0

RUN gem install cloudsync --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["cloudsync"]
CMD ["--help"]

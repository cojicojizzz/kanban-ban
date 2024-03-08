FROM ruby:3.2.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs locales ffmpeg

RUN locale-gen ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LC_CTYPE ja_JP.UTF-8
RUN localedef -f UTF-8 -i ja_JP ja_JP.utf8

RUN mkdir /kanban-ban
WORKDIR /kanban-ban

ADD Gemfile /kanban-ban/Gemfile
ADD Gemfile.lock /kanban-ban/Gemfile.lock

RUN bundle install
ADD . /kanban-ban

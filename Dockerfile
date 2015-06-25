FROM ruby:2.2.1
MAINTAINER flomotlik@gmail.com

RUN mkdir -p /app/lib/rollbar_search_url
WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
ADD rollbar_search_url.gemspec /app/rollbar_search_url.gemspec
Add lib/rollbar_search_url/version.rb /app/lib/rollbar_search_url/version.rb
RUN bundle install -j24

ADD . /app

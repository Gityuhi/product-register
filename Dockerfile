FROM ruby:2.5

RUN gem update --system 3.3.22

RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn

WORKDIR /product-register

COPY Gemfile Gemfile.lock /product-register/

RUN bundle install
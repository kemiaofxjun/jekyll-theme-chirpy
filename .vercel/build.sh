#!/usr/bin/env bash
set -e
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

bundle config set --local deployment 'true'
bundle install -j$(nproc)
bundle exec jekyll build -d public

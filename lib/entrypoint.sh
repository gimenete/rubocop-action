#!/bin/sh

set -e
if ! bundler exec rubocop -v &> /dev/null; then
  echo "No bundled rubocop installed, installing latest instead"
  gem install rubocop
fi

ruby /action/lib/index.rb

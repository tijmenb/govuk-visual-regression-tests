#!/bin/bash -xe

bundle install --path "${HOME}/bundles/${JOB_NAME}" --deployment

bundle exec rake generate_config

docker run -P -v ~/govuk/govuk-visual-regression-tests:/wraithy -w='/wraithy' bbcnews/wraith capture generated-wraith-config.yml

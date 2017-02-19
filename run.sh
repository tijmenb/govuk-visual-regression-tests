#!/bin/bash -xe

bundle install --path "${HOME}/bundles/${JOB_NAME}" --deployment

bundle exec rake generate_config

bundle exec wraith capture generated-wraith-config.yml

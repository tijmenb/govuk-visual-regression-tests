#!/bin/bash -xe

bundle install --path "${HOME}/bundles/${JOB_NAME}" --deployment

bundle exec rake generate_config

wraith capture generated-wraith-config.yml

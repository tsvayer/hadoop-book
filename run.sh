#!/bin/bash

docker run --rm -v /vagrant:/usr/src/hadoop-book -w /usr/src/hadoop-book sequenceiq/hadoop-docker:2.7.0 ./hadoop.sh $1

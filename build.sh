#!/bin/bash

docker run --name maven -v /vagrant:/usr/src/hadoop-book -w /usr/src/hadoop-book maven:3 mvn package -DskipTests

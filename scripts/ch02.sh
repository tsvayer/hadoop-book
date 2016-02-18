#!/bin/bash

#upload sample to HDFS
$HADOOP_PREFIX/bin/hadoop fs -put ./input/ncdc/sample.txt /user/root/input

#run streaming python
export HADOOP_CLASSPATH=./ch02-mr-intro/target/ch02-mr-intro-4.0.jar
$HADOOP_PREFIX/bin/hadoop MaxTemperature input/sample.txt output

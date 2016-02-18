#!/bin/bash

#upload sample to HDFS
$HADOOP_PREFIX/bin/hadoop fs -put ./input/ncdc/sample.txt /user/root/input

#run streaming python
$HADOOP_PREFIX/bin/hadoop jar $HADOOP_PREFIX/share/hadoop/tools/lib/hadoop-streaming-2.7.0.jar \
  -files ch02-mr-intro/src/main/python/max_temperature_map.py,ch02-mr-intro/src/main/python/max_temperature_reduce.py \
  -input input/sample.txt \
  -output output \
  -mapper max_temperature_map.py \
  -reducer max_temperature_reduce.py


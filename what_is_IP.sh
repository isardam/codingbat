#!/bin/bash

#what is my IP
/sbin/ifconfig | awk '/dr:/{gsub(/.*:/,"",$2);print$2}'
/sbin/ifconfig | sed -rn 's/.*r:([^ ]+) .*/\1/p'
/sbin/ip addr sh | awk '/inet/{print$2}'

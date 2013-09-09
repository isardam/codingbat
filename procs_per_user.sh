#!/bin/bash

#If you go back and look at the example where I counted the number of processes per user, you'll notice that the "UID" header from the ps command ends up being counted. How would you suppress this?

#ps aux | awk '$1 ~ /[a-z]/ {print $1}' | sort -n | uniq -c | sort -nr 

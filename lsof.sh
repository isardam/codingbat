#!/bin/bash

#Parse the output of "lsof -nPi" and output the unique process name, PID, user ID, and port combinations for all processes that are in "LISTEN" mode on ports on the system.

/sbin/lsof -nPi | grep "LISTEN" | awk '{print}'

#!/bin/bash

#Print out process data for all commands being run as root by interactive users on the system (HINT: If the command is interactive, then the "TTY" column will have something other than a "?" in it)

ps -ef | awk '($6 != "?" && $1 =="root") {print}'

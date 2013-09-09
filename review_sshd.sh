#!/bin/bash

#I mentioned that if you kill all the sshd processes while logged in via SSH, you'll be kicked out of the box (you killed your own sshd process) and unable to log back in (you've killed the master SSH daemon). Fix the awk so that it only prints out the PIDs of SSH daemon processes that (a) don't belong to you, and (b) aren't the master SSH daemon (HINT: The master SSH daemon is the one who's parent process ID is 1).

ps -ef | awk '($1 != whoami && /sshd/) {printf "sshd is running as user %s:", $1}'

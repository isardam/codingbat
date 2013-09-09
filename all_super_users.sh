#!/bin/bash

#Print out the usernames of all accounts with superuser privileges (UID is 0 in /etc/passwd)

awk -F: '$3==0' /etc/passwd

#!/bin/bash

#Print out the usernames of all accounts with null password fields in /etc/shadow
awk -F: '($2=="") {print $1}' /etc/shadow

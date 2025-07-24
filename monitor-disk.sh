#! /usr/bin/bash

usage=$(df / | awk 'NR==2 {print $5}'  | sed 's/%//')

if [ "$usage" -ge 80 ]
then
echo "Disk usage at ${usage}% - running out of space :("
else
echo "Disk ok (${usage}%)  :)"
fi

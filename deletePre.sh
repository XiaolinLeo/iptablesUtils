#! /bin/bash
iptables -L POSTROUTING -n -t nat --line-number|grep $2|grep $3|awk  '{print $1}'|sort -r|xargs -n 1 iptables -t nat  -D POSTROUTING

#!/bin/sh
nginx -c /root/nginx.conf
tail -f /etc/nginx/logs/access.log

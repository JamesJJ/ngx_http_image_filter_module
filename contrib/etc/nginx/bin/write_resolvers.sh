#!/bin/sh
echo resolver $(awk 'BEGIN{ORS=" "} /nameserver/{print $2}' /etc/resolv.conf | sed "s/ $/ ipv6=off;/g") > /etc/nginx/conf.d/resolvers.conf

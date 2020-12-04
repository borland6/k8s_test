#!/bin/bash

PREFIX="${PREFIX:-default}"
COMMITHASH="${COMMITHASH:- }"
COMMITLOG="${COMMITLOG:- }"
IPS=$(hostname -I)

cat <<EOF > /var/www/html/index.html
Hostname is ${PREFIX}_${HOSTNAME}
Latest Commit Hash is ${PREFIX}_${COMMITHASH}
Latest Commit Log is ${PREFIX}_${COMMITLOG}
IP address list are ${PREFIX}_${IPS}
Datetime is $(date)
Welcome to K8s Dennis!
THANK YOU!
I LOVE YOU!
NAMASTE!
PEACE!
ZEN!
ZEROLIMIT!
I AM SORRY!
PLEASE FORGIVE ME!
EOF

#Generate a new index.html under /var/www/html
exec "$(which nginx)" -c /etc/nginx/nginx.conf -g "daemon off;"

#!/bin/bash

host=${1:?"missing arg 1 for host"}
port=${2:?"missing arg 2 for port"}

echo "host address is: $host"
echo "port number is: $port"

timeout 1 bash -c "</dev/tcp/$host/$port" 2>/dev/null && echo "Port $port is open on $host" || echo "Port $port is closed on $host"
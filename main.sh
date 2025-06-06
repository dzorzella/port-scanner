#!/bin/bash

host=${1:?"missing arg 1 for host"}
port=${2:?"missing arg 2 for port. Accepted values: [port] | [start-end]"}

if [[ $port =~ ([0-9]+)-([0-9]+) ]]; then
  start=${BASH_REMATCH[1]}
  end=${BASH_REMATCH[2]}
fi

log_message() {
  echo "`date "+%Y-%m-%d %H:%M:%S"` $1" | tee -a log
}

for p in $(seq $start $end);
do
    if timeout 1 bash -c "</dev/tcp/$host/$p" 2>/dev/null; then
      log_message "Port $p is open on $host"
    else
      log_message "Port $p is closed on $host"
    fi
done
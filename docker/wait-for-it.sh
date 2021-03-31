#!/bin/bash

set -e

host="$1"
shift
cmd="$@"

until /usr/bin/mysql --host=${database__connection__host} --port=${database__connection__port} --user=${database__connection__user} --password=${database__connection__password} --database=${database__connection__database} ; do
  >&2 echo "MySQL is unavailable - sleeping"
  sleep 1
done

>&2 echo "MySQL is up - executing command"
exec "$@"
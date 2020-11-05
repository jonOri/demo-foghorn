#!/bin/sh

for env in $(/bin/printenv | sed 's/=.*//' | grep 'ORI_')
do
  echo "PassEnv ${env}" >> /usr/local/apache2/conf/extra/passenv.conf
done

exec "$@"

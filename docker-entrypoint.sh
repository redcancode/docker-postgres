#!/usr/bin/env sh

if [ ! -e $PGDATA/PG_VERSION ]; then
  su-exec postgres initdb
  su-exec postgres sed -i -e "s/#listen_addresses = 'localhost'/listen_addresses = '*'/" $PGDATA/postgresql.conf
fi

su-exec postgres postgres

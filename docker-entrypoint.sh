#!/usr/bin/env sh

if [ ! -e $PGDATA/PG_VERSION ]; then
  su-exec postgres initdb
  su-exec postgres sed -i -e "s/#listen_addresses = 'localhost'/listen_addresses = '*'/" $PGDATA/postgresql.conf
  su-exec postgres echo "host all all 0.0.0.0/0 trust" >> $PGDATA/pg_hba.conf
fi

su-exec postgres postgres

#!/usr/bin/env sh

if [ ! -e /var/lib/postgresql/data/PG_VERSION ]; then
  su-exec postgres initdb
fi

su-exec postgres postgres

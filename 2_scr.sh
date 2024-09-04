#!/bin/bash

echo "wal_level = replica" >> /var/lib/postgresql/data/postgresql.conf
echo "max_wal_senders = 10" >> /var/lib/postgresql/data/postgresql.conf
echo "wal_log_hints = on" >> /var/lib/postgresql/data/postgresql.conf
echo "archive_mode = on" >> /var/lib/postgresql/data/postgresql.conf
echo "max_replication_slots = 10" >> /var/lib/postgresql/data/postgresql.conf
echo "log_destination = 'stderr'" >> /var/lib/postgresql/data/postgresql.conf
echo "logging_collector = on" >> /var/lib/postgresql/data/postgresql.conf
echo "log_directory = '/var/lib/postgresql/data/'" >> /var/lib/postgresql/data/postgresql.conf
echo "log_filename = 'postgresql-my.log'" >> /var/lib/postgresql/data/postgresql.conf
echo "log_statement = all" >> /var/lib/postgresql/data/postgresql.conf
echo "log_replication_commands = on" >> /var/lib/postgresql/data/postgresql.conf

echo "host replication all 0.0.0.0/0 trust" >> /var/lib/postgresql/data/pg_hba.conf

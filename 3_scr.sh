#!/bin/bash

rm -rf /var/lib/postgresql/data/* && pg_basebackup --write-recovery-conf --host=m_base --pgdata=/var/lib/postgresql/data/

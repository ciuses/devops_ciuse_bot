CREATE USER user_for_replica WITH REPLICATION ENCRYPTED PASSWORD 'zxcvbnrp';
SELECT pg_create_physical_replication_slot('replication_slot');
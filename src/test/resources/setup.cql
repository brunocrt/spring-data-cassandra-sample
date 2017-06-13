#CREATE KEYSPACE sample WITH replication = {'class': 'SimpleStrategy', 'replication_factor' : 1};
#CREATE KEYSPACE sample WITH replication = {'class': 'NetworkTopologyStrategy', 'DC1' : 1, 'DC2' : 3} AND durable_writes = false;

CREATE TABLE customer (id TimeUUID PRIMARY KEY, firstname text, lastname text);
CREATE INDEX customerfistnameindex ON customer (firstname);
CREATE INDEX customersecondnameindex ON customer (lastname);

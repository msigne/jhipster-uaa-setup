#!/bin/bash

cat /cql/create-keyspace.cql > create-keyspace-tables.cql
echo "USE gateway;" >> create-keyspace-tables.cql
cat /cql/create-tables.cql >> create-keyspace-tables.cql

cqlsh -f create-keyspace-tables.cql

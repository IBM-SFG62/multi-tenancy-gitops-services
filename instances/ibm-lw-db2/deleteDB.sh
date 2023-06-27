#!/bin/bash

# Source the db2profile
source /home/db2inst1/sqllib/db2profile

# Define the connection string
CONNECTION_STRING="DATABASE=$DB_NAME;HOSTNAME=$DB_HOST;PORT=$DB_PORT;PROTOCOL=TCPIP;UID=$DB_USER;PWD=$DB_PASS;"

su db2inst1
# Connect to the DB2 database
db2 connect to $CONNECTION_STRING

# Drop the DB2 database
db2 drop database $DB_NAME

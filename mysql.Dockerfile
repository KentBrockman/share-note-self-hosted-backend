FROM mysql:8.0

COPY schema.sql /docker-entrypoint-initdb.d/schema.sql

# Ensure the script is owned by the MySQL user
RUN chown mysql:mysql /docker-entrypoint-initdb.d/schema.sql

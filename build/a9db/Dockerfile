# The db service of upstream's deployments/docker-compose.yml (container a9db, the host name the
# site's settings.php uses): postgres:10.5 with its environment baked in and the site's database
# dump (app/dump.db) copied to /docker-entrypoint-initdb.d/dump.sql, where upstream mounts it.
FROM docker.io/library/postgres:10.5
ENV POSTGRES_PASSWORD=example
COPY app/dump.db /docker-entrypoint-initdb.d/dump.sql

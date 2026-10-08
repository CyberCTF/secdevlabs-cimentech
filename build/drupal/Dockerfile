# The drupal service of upstream's deployments/docker-compose.yml: drupal:7.57 with the site's
# sites/ and themes/ folders (app/html/sites, app/html/themes) copied in, where upstream's compose
# file mounts them, and the files folder owned by the web server. POSTGRES_PASSWORD from the
# compose file is baked in (Drupal itself reads the database settings from
# sites/default/settings.php: host a9db, user postgres, password example).
FROM docker.io/library/drupal:7.57
ENV POSTGRES_PASSWORD=example
COPY app/html/sites/ /var/www/html/sites/
COPY app/html/themes/ /var/www/html/themes/
RUN chown -R www-data:www-data /var/www/html/sites/default/files

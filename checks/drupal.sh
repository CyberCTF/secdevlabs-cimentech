#!/bin/sh
# The site is the Cimentech Drupal (loaded from the dump), and it runs Drupal 7.57.
set -e
curl -fsS http://drupal/ | grep -qi 'cimentech'
changelog=$(curl -fsS http://drupal/CHANGELOG.txt)
echo "$changelog" | head -n 3 | grep -q "Drupal 7.57"

#!/usr/bin/env bash

composer install
direnv allow
cp docroot/sites/default/example.settings.local.php docroot/sites/default/settings.local.php
cp docroot/sites/default/example.settings.php docroot/sites/default/settings.php
drush si standard --account-name=admin --account-pass=admin --site-name=LocalDev --db-url=sqlite:sites/default/files/.db.sqlite -y

# Modules setup.
drush en admin_toolbar -y
drush en admin_toolbar_tools -y
drush en paragraphs -y
drush en responsive_image -y
drush en ctools -y
drush en ctools_block -y
drush en ctools_views -y
drush en devel -y
drush en layout_builder -y
drush en layout_discovery -y
drush en twig_tools -y
drush en twig_tweak -y
drush en default_content -y

drush cr
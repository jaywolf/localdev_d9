# Drupal 9 local dev
A quick way to spin up a local D9 site for dev and testing. 

## Dependencies

- Local php setup(v7.4)
- Installed `direnv` (https://direnv.net/)

## Initial setup

```
scripts/init-setup.sh
drush serve
```

## Local instalation

```
composer install
direnv allow
drush si standard --existing-config --account-name=admin --account-pass=admin --site-name=LocalDev -y
drush serve
```

## Local update

```
composer install
drush cr
drush updb -y
drush cim -y
```

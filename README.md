# Wequest Web App

>A resource and skill sharing web app focussed around event.

## History

This started as a prototype for my MA final project. 

## Prerequisites

- [Drush](https://www.drupal.org/project/drush)

## Platform

- Drupal 7

## Install

```git clone git@github.com:yeahsmaggy/wequest.git

cd wequest
drush make distro.make sandbox --working-copy --no-gitinfofile
cd into sandbox
make a database called wq
drush si wl  --db-url='mysql://root:root@localhost/wq' --site-name=wl
```

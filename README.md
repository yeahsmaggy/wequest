WL
=======

A resource and skill sharing web app focussed around event.

git clone git@github.com:yeahsmaggy/wequest.git

cd into wequest folder

drush make distro.make sandbox --working-copy --no-gitinfofile

cd into sandbox

make a database called wq

drush si wl  --db-url='mysql://root:root@localhost/wq' --site-name=wl

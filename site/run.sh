#!/bin/bash

cd ${WEBROOT}/../

/bin/npm install
/bin/composer install
/bin/php artisan optimize
/bin/httpd -D FOREGROUND -f /content/apache/conf/httpd.conf

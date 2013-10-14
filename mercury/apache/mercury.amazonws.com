<VirtualHost *:80>
    ServerName ec2-54-254-176-246.ap-southeast-1.compute.amazonaws.com

    WSGIDaemonProcess mercury_bottle user=www-data group=www-data processes=1 threads=5
    WSGIScriptAlias / /var/www/mercury_bottle/app.wsgi

    <Directory /var/www/mercury_bottle>
        WSGIProcessGroup mercury_bottle
        WSGIApplicationGroup %{GLOBAL}
        Order deny,allow
        Allow from all
    </Directory>
</VirtualHost>

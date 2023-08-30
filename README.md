# LAM Sites in the cloud

[sites.lam1.us](http://sites.lam1.us/)
[sites.lamurakami.com](http://sites.lamurakami.com/)

This is one of the additional-sites of the Linux Apache MariaDB in the cloud
AWS EC2 instance described in the
[no-ssl repo README.md](https://github.com/LAMurakami/no-ssl#readme)

This repo contains content in the html folder and an apache2 configuration
that can be implemented with:

 sudo ln -s /var/www/sites/sites_apache2.conf \
 /etc/apache2/sites-available/060_sites.conf

 sudo a2ensite 060_sites
 sudo systemctl reload apache2

If the repo contents are installed in a location other than /var/www
the path in the configuration and in the instuctions would have to be modified.

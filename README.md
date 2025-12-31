# LAM Sites in the cloud

[sites.lam1.us](http://sites.lam1.us/)
[sites.lamurakami.com](http://sites.lamurakami.com/)

This is one of the additional-sites of the Linux Apache MariaDB in the cloud
AWS EC2 instance described in the
[no-ssl repo README.md](https://gitlab.com/aws-lam/no-ssl/-/blob/master/README.md)

This repo contains content in the html folder and an apache2 configuration
that can be implemented with:

 cd /var/www ; git clone https://gitlab.com/aws-lam/sites

 sudo ln -s /var/www/sites/sites_apache2.conf /etc/apache2/sites-available/060_sites.conf

 sudo a2ensite 060_sites

 sudo systemctl reload apache2

If the repo contents are installed in a location other than /var/www
the path in the configuration and in the instuctions would have to be modified.
## GitLab and GitHub public Projects/Repositories
The
[gitlab.com/aws-lam/sites](https://gitlab.com/aws-lam/sites)
Project is a clone of the
[github.com/LAMurakami/sites](https://github.com/LAMurakami/sites)
Repostory.  My
[gitlab.com/LAMurakami](https://gitlab.com/LAMurakami)
account was created so that Projects can be cloned using https without
authentication over IPv6 as well as IPv4 unlike the
[github.com/LAMurakami](https://github.com/LAMurakami)
Repostories that can only be accessed over IPv6 with the
[IPv6 only workaround.](https://lamurakami.github.io/blog/2024/06/05/Access-GitHub-com-from-an-instance-without-a-public-IPv4-address.html)

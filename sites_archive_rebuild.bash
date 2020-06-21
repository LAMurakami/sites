#!/bin/bash

<<PROGRAM_TEXT

This script will rebuild an archive of /var/www/sites resources
 if any of the resources have been changed or added.

The archive is extracted on a new instance with:

tar -xvzf /mnt/efs/aws-lam1-ubuntu/sites.tgz --directory /var/www

The following will list files changed since the archive was last rebuilt:

if [ $(find /var/www/sites -newer /mnt/efs/aws-lam1-ubuntu/sites.tgz -print \
 | sed 's|^/var/www/sites/||' | grep -v '.git/' | grep -v '.git$' | wc -l) \
 -gt 0 ]
then
  find /var/www/sites -newer /mnt/efs/aws-lam1-ubuntu/sites.tgz \
  | grep -v '.git/' | grep -v '.git$' \
  | xargs ls -ld --time-style=long-iso  | sed 's|/var/www/sites/||' 
fi

PROGRAM_TEXT

if [ $(find /var/www/sites -newer /mnt/efs/aws-lam1-ubuntu/sites.tgz -print \
| sed 's|^/var/www/sites/||' | grep -v '.git/' \
| grep -v '.git$' | wc -l) -gt 0 ]; then

  echo Recreating the aws-lam1-ubuntu/sites.tgz archive

  rm -f /mnt/efs/aws-lam1-ubuntu/sites.t{gz,xt}

  tar -cvzf /mnt/efs/aws-lam1-ubuntu/sites.tgz \
  --exclude='sites/.git' \
  --exclude='sites/html/RCS' \
  --directory /var/www sites 2>&1 \
  | tee /mnt/efs/aws-lam1-ubuntu/sites.txt

fi

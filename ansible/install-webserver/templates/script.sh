#!/bin/bash
LOG=$(blkid |grep log |cut -d " " -f2 |cut -c 7-42)
APP=$(blkid |grep app-app |cut -d " " -f2 |cut -c 7-42)
echo "UUID=$LOG /var/log/apache2                   xfs    defaults        0       2" >> /etc/fstab
echo "UUID=$APP /var/www                   xfs    defaults        0       2" >> /etc/fstab
mount -a
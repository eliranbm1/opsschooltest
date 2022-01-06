#!/bin/bash
#add fix to exercise2 here
sudo su
rm /etc/apache2/sites-available/000-default.conf
sudo systemctl restart apache2
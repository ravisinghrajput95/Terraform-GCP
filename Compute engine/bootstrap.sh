# shell script to install and configure a apache webserver on ubuntu compute instance

#!/bin/bash
apt update
apt install unzip apache2 -y
wget -O website.zip https://www.tooplate.com/download/2125_artxibition
unzip website.zip
mv 2125_artxibition website
cd website/
cp -r * /var/www/html/
systemctl enable apache2
systemctl start apache2

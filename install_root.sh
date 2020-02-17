#!/bin/bash
#Ment to be run as root after buildout is done. Will obtain cert and install on nginx debian

cd /etc/nginx
ln -s /home/voteit/srv/st_buildout/etc/nginx.conf ./sites-available/st.conf
cd sites-enabled
ln -s ../sites-available/st.conf

service nginx stop
certbot certonly --standalone -d st.voteit.se
service nginx start

#!/bin/sh
sudo ufw disable
yes | sudo ufw reset

# prevent lockout
sudo ufw allow 22/tcp

curl -s https://www.cloudflare.com/ips-v4 -o /tmp/cf_ips
curl -s https://www.cloudflare.com/ips-v6 >> /tmp/cf_ips

# Allow all traffic from Cloudflare IPs (with ports restriction)
for cfip in `cat /tmp/cf_ips`; do sudo ufw allow proto tcp from $cfip to any port 443 comment 'Cloudflare IP'; done
for cfip in `cat /tmp/cf_ips`; do sudo ufw allow proto tcp from $cfip to any port 80 comment 'Cloudflare IP'; done

sudo ufw reload > /dev/null
yes | sudo ufw enable

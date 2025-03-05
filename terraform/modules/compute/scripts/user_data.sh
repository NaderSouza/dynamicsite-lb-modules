#!/bin/bash

echo "Update/Install required OS packages"
yum update -y
dnf install -y nginx wget git telnet tree

echo "Deploy Static Web App"
cd /tmp
git clone https://github.com/NaderSouza/app-dynamicsite
cp -r /tmp/app-dynamicsite/* /usr/share/nginx/html/

sudo mkdir /tmp/ssm
cd /tmp/ssm
wget https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/debian_amd64/amazon-ssm-agent.deb
sudo dpkg -i amazon-ssm-agent.deb
sudo systemctl enable amazon-ssm-agent
rm amazon-ssm-agent.deb

echo "Config NGINX WebServer"
chown -R nginx:nginx /usr/share/nginx/html
chmod -R 755 /usr/share/nginx/html

echo "Restart NGINX WebServer"
systemctl enable nginx
systemctl restart nginx

# Install AWS SSM Agent
echo "Installing AWS SSM Agent..."
ARCH=$(uname -m)

# Enable and start SSM Agent
systemctl enable amazon-ssm-agent
systemctl restart amazon-ssm-agent
echo "AWS SSM Agent installed and running successfully!"

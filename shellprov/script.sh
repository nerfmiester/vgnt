#!/usr/bin/env bash
echo "Installing: nodejs, lynx, ruby and jekyll..."
apt-get update -y >>/tmp/provision-script.log 2>&1
apt-get install nodejs -y >>/tmp/provision-script.log 2>&1
apt-get install lynx-cur -y >>/tmp/provision-script.log 2>&1
apt-add-repository ppa:brightbox/ruby-ng >>/tmp/provision-script.log 2>&1
apt-get update >>/tmp/provision-script.log 2>&1
apt-get install -y ruby2.2 ruby2.2-dev >>/tmp/provision-script.log 2>&1
gem install jekyll >>/tmp/provision-script.log 2>&1

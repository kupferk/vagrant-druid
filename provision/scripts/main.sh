#!/bin/bash
 
# Directory in which librarian-puppet should manage its modules directory
PUPPET_DIR=/vagrant/provision/puppet

apt-get update
apt-get --yes --force-yes upgrade
apt-get --yes --force-yes install puppet rubygems-integration unzip

 
if [ "$(gem search -i librarian-puppet)" = "false" ]; then
  gem install librarian-puppet
  #cd $PUPPET_DIR && librarian-puppet install
else
  #cd $PUPPET_DIR && librarian-puppet update
  echo Ok
fi


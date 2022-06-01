#!/usr/bin/env bash

# TFE installation directory
mkdir /mnt/tfe 

cp /vagrant/config/license.rli /var/tmp/license.rli
chmod 600 /var/tmp/license.rli

curl -o /var/tmp/install.sh https://install.terraform.io/ptfe/stable

if [ "${RELEASE_SEQUENCE}" ] ; then
  bash /var/tmp/install.sh release-sequence=${RELEASE_SEQUENCE} no-proxy private-address=192.168.56.33 public-address=192.168.56.33
else
  bash /var/tmp/install.sh no-proxy private-address=192.168.56.33 public-address=192.168.56.33
fi


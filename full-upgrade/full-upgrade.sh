#!/bin/bash
# Unattended full system upgrade
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get full-upgrade -y --allow-downgrades --purge --auto-remove
apt-get autoremove -y
apt-get clean

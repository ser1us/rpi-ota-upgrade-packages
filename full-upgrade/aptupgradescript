#!/bin/bash
# Unattended full system upgrade
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt update
if apt -y -o DPKG::Options::="--force-confnew --allow-downgrades --purge --auto-remove" full-upgrade >output.txt; then
  apt-get autoremove -y
  apt-get clean
  if [ -r /var/run/reboot-required ]; then
    echo Rebooting to finish the upgrade
    exit 2 # EXIT_REBOOT
  fi
else
  echo Upgrade failed:
  echo
  cat output.txt
  exit 1 # EXIT_FAILURE
fi
echo Upgrade complete
exit 0 # EXIT_SUCCESS

#!/bin/bash

echo "Uninstalling IR Emitter..."
sudo systemctl disable --now ir-emitter
sudo rm -rfv /etc/systemd/system/ir-emitter.service
sudo rm -rfv /usr/local/bin/ir-emitter

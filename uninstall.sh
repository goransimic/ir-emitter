#!/bin/bash

echo "Uninstalling IR Emitter..."
sudo systemctl -q disable --now ir-emitter
sudo rm -rf /etc/systemd/system/ir-emitter.service
sudo rm -rf /usr/local/bin/ir-emitter

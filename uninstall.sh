#!/bin/bash

echo "Uninstalling IR Emitter..."
sudo systemctl disable --now ir-emitter >/dev/null
sudo rm -rf /etc/systemd/system/ir-emitter.service
sudo rm -rf /usr/local/bin/ir-emitter

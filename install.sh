#!/bin/bash

echo "Installing IR Emitter..."
sudo apt-get update > /dev/null
sudo apt-get install -y git > /dev/null
git clone https://github.com/goransimic/ir-emitter.git /tmp/ir-emitter >/dev/null
sudo cp /tmp/ir-emitter/ir-emitter /usr/local/bin/
sudo cp /tmp/ir-emitter/ir-emitter.service /etc/systemd/system/
sudo systemctl enable --now ir-emitter >/dev/null
rm -rf /tmp/ir-emitter

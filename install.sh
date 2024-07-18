#!/bin/bash

echo "Installing IR Emitter..."
sudo apt-get update > /dev/null
sudo apt-get install -y git > /dev/null
git clone -q https://github.com/goransimic/ir-emitter.git /tmp/ir-emitter
sudo cp /tmp/ir-emitter/ir-emitter /usr/local/bin/
sudo cp /tmp/ir-emitter/ir-emitter.service /etc/systemd/system/
sudo systemctl -q enable --now ir-emitter
rm -rf /tmp/ir-emitter

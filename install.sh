#!/bin/bash

sudo apt update > /dev/null
sudo apt install -y git > /dev/null

echo "Installing IR Emitter..."
git clone https://github.com/goransimicdev/ir-emitter.git /tmp/ir-emitter > /dev/null
sudo cp /tmp/ir-emitter/ir-emitter /usr/local/bin/
sudo cp /tmp/ir-emitter/ir-emitter.service /etc/systemd/system/
sudo systemctl enable --now ir-emitter
rm -rf /tmp/ir-emitter

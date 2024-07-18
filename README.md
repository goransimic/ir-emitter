# Enable IR Emmiter

Enable IR Emitter for Dell XPS 15 9500

## Setup

```sh
git clone git@github.com:goransimic/enable-ir-emmiter.git /tmp/enable-ir-emitter
cd /tmp/enable-ir-emmiter
sudo cp enable-ir-emitter /usr/local/bin/
sudo cp enable-ir-emitter.service /etc/systemd/system/
sudo systemctl enable --now enable-ir-emitter
cd -
rm -rf /tmp/enable-ir-emitter
```

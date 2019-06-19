#!/bin/bash
sudo launchctl limit maxfiles 4096 8192
brew install saltstack
curl -L https://raw.githubusercontent.com/saltstack/salt/develop/pkg/darwin/com.saltstack.salt.minion.plist | sudo tee cp /Library/LaunchDaemons/com.saltstack.salt.minion.plist && \
sudo launchctl load -w /Library/LaunchDaemons/com.saltstack.salt.minion.plist && \
sudo launchctl unload /Library/LaunchDaemons/com.saltstack.salt.minion.plist
sudo salt -G 'os:macos' cmd.run "curl -L https://raw.githubusercontent.com/saltstack/salt/develop/pkg/darwin/com.saltstack.salt.minion.plist | sudo tee cp /Library/LaunchDaemons/com.saltstack.salt.minion.plist && 
sudo launchctl load -w /Library/LaunchDaemons/com.saltstack.salt.minion.plist && 
sudo launchctl unload /Library/LaunchDaemons/com.saltstack.salt.minion.plist"

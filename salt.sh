#!/bin/bash
echo Welcome to the Autoinstall by AndreV84 !
echo The installer will put a placeholder for the ip address of the master server to the file /etc/salt/minion
echo update the value with your ip address of the master, please
ip address of your master server, please, e.g. 10.0.0.1  and press ENTER && read master && echo master: $master >minion && sudo mkdir /etc/salt
# sudo mv minion /etc/salt/
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sudo launchctl limit maxfiles 4096 8192
echo master : 10.0.0.2 > minion
brew install saltstack
curl -L https://raw.githubusercontent.com/saltstack/salt/develop/pkg/darwin/com.saltstack.salt.minion.plist | sudo tee cp /Library/LaunchDaemons/com.saltstack.salt.minion.plist && \
sudo launchctl load -w /Library/LaunchDaemons/com.saltstack.salt.minion.plist && \
sudo launchctl unload /Library/LaunchDaemons/com.saltstack.salt.minion.plist
sudo salt -G 'os:macos' cmd.run "curl -L https://raw.githubusercontent.com/saltstack/salt/develop/pkg/darwin/com.saltstack.salt.minion.plist | sudo tee cp /Library/LaunchDaemons/com.saltstack.salt.minion.plist && 
sudo launchctl load -w /Library/LaunchDaemons/com.saltstack.salt.minion.plist && 
sudo launchctl unload /Library/LaunchDaemons/com.saltstack.salt.minion.plist"
echo The installer has put a placeholder for the ip address of the master server to the file /etc/salt/minion
echo update the value with your ip address of the master, please, before starting the minion with sudo salt-minion -d

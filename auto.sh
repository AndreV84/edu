echo type ip address of your master server, please, e.g. 10.0.0.1  and press ENTER && read master && wait && echo master: $master >minion
wait
sudo mkdir /etc/salt
sudo mv minion /etc/salt/
sudo chown -R $(whoami) /usr/local/share/zsh /usr/local/share/zsh/site-functions /usr/local/var/homebrew/locks /usr/local/Homebrew/
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sudo launchctl limit maxfiles 4096 8192
brew install saltstack
curl -L https://raw.githubusercontent.com/saltstack/salt/develop/pkg/darwin/com.saltstack.salt.minion.plist | sudo tee cp /Library/LaunchDaemons/com.saltstack.salt.minion.plist && \
sudo launchctl load -w /Library/LaunchDaemons/com.saltstack.salt.minion.plist && \
sudo launchctl unload /Library/LaunchDaemons/com.saltstack.salt.minion.plist
sudo salt -G 'os:macos' cmd.run "curl -L https://raw.githubusercontent.com/saltstack/salt/develop/pkg/darwin/com.saltstack.salt.minion.plist | sudo tee cp /Library/LaunchDaemons/com.saltstack.salt.minion.plist && 
sudo launchctl load -w /Library/LaunchDaemons/com.saltstack.salt.minion.plist && 
sudo launchctl unload /Library/LaunchDaemons/com.saltstack.salt.minion.plist"


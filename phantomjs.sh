#I needed to download a package but it was kind of boring.
#Using sheel script the commands just needed to be copy pasted. Hooray!
#!/bin/bash

sudo apt-get update
sudo apt-get install build-essential chrpath libssl-dev libxft-dev

sudo apt-get install libfreetype6 libfreetype6-dev
sudo apt-get install libfontconfig1 libfontconfig1-dev

cd ~
export PHANTOM_JS="phantomjs-2.1.1-linux-x86_64.tar.bz2"
wget https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS
sudo tar xvjf $PHANTOM_JS

sudo mv $PHANTOM_JS /usr/local/share
sudo ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin
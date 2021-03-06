#!/bin/bash

# Author: Andreas Prang <Andreas.Prang@AxelSpringer.de>

# Install requirements
sudo apt-get -y install git

# Install Telescope
sudo git clone https://github.com/TelescopeJS/Telescope.git
sudo mv Telesco* /opt/Telescope
curl https://install.meteor.com/ | sh

# Install service
wget https://raw.githubusercontent.com/AndreasPrang/TelescopeJS-Install/master/Telescope
sudo mv Telescope /etc/init.d/Telescope
chown root:root /etc/init.d/Telescope
sudo chmod +x /etc/init.d/Telescope
sudo update-rc.d Telescope defaults 97 03

# Start Telescope
sudo service Telescope start

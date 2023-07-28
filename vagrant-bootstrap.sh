
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y language-pack-de
#sudo DEBIAN_FRONTEND=noninteractive apt-get install -y zsh
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y git
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y libicu-dev
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-client
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y libmysqlclient-dev
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y imagemagick
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y libmagickwand-dev
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y libmysqlclient-dev

# Install nodejs and yarn
wget -qO- https://deb.nodesource.com/setup_8.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y yarn



su -c 'command curl -sSL https://rvm.io/mpapis.asc | gpg --import -' - vagrant
su -c 'command curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -' - vagrant
su -c 'curl -sSL https://get.rvm.io | bash -s stable' - vagrant

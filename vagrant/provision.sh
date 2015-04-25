sudo apt-get install -y postgresql-server-dev-9.3
echo "gem: --no-rdoc --no-ri" >> ~/.gemrc
gem install bundler
rbenv rehash
cd /vagrant
bundle install

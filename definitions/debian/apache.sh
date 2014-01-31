export RBENV_ROOT=/usr/local/rbenv
export PATH=${RBENV_ROOT}/bin:${PATH}
. ~/.profile 

apt-get install -y apache2-mpm-prefork apache2-prefork-dev libcurl4-openssl-dev

gem install passenger --no-ri --no-rdoc

rbenv rehash
passenger-install-apache2-module --auto

echo "LoadModule passenger_module /usr/local/rbenv/versions/1.9.3-p484/lib/ruby/gems/1.9.1/gems/passenger-4.0.37/buildout/apache2/mod_passenger.so" >  /etc/apache2/mods-available/passenger.load
echo "<IfModule mod_passenger.c>
  PassengerRoot /usr/local/rbenv/versions/1.9.3-p484/lib/ruby/gems/1.9.1/gems/passenger-4.0.37
  PassengerDefaultRuby /usr/local/rbenv/versions/1.9.3-p484/bin/ruby
</IfModule>" > /etc/apache2/mods-available/passenger.conf

a2enmod passenger

/etc/init.d/apache2 restart



# Install MySQL
echo 'mysql-server-5.5 mysql-server/root_password password vagrant' | debconf-set-selections
echo 'mysql-server-5.5 mysql-server/root_password_again password vagrant' | debconf-set-selections
apt-get -y install mysql-client-5.5 mysql-server-5.5 libmysqlclient-dev 

# emacs
apt-get -y install emacs23-nox 

# Install Ruby from packages
apt-get -y install git

# for build ruby
apt-get -y install build-essential bison libreadline6-dev curl git-core zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev autoconf libncurses5-dev


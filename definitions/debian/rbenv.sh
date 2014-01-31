export RBENV_ROOT=/usr/local/rbenv
export PATH=${RBENV_ROOT}/bin:${PATH}

apt-get -y install build-essential bison libreadline6-dev curl git-core zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev autoconf libncurses5-dev

sudo git clone git://github.com/sstephenson/rbenv.git ${RBENV_ROOT}
sudo git clone git://github.com/sstephenson/ruby-build.git ${RBENV_ROOT}/plugins/ruby-build

bash -c 'cat <<__EOT__ >> ~/.profile
export RBENV_ROOT="/usr/local/rbenv"
export PATH="\${RBENV_ROOT}/bin:\${PATH}"
eval "\$(rbenv init -)"
__EOT__'

source  ~/.profile 

rbenv install 1.9.3-p484
rbenv global 1.9.3-p484
rbenv rehash

gem install bundler
rbenv rehash

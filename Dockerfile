FROM ubuntu:16.04

#------------------------------------------
# Instalação do ruby 1.8.7
#------------------------------------------

RUN apt-get -qq update

RUN apt-get -qq install -y --no-install-recommends \
	apt-utils dirmngr patch make libsqlite3-dev libpq-dev libmysqlclient-dev libxslt-dev \
	libmagickwand-dev libmagickcore-dev gcc apt-utils curl wget libxml2-dev 

RUN apt-get -qq install -y --no-install-recommends \
	sudo ca-certificates build-essential imagemagick libmysqlclient20 graphicsmagick-libmagick-dev-compat \
	libpq5 libsqlite3-0 bzr git mercurial openssh-client bzip2 gawk g++ 

RUN apt-get -qq install -y --no-install-recommends \
	libssl-dev libc6-dev zlib1g-dev libyaml-dev sqlite3 autoconf libgmp-dev \
	libgdbm-dev libncurses5-dev automake libtool bison pkg-config libffi-dev libreadline6-dev

#RUN apt-get -qq install -y libmagick9-dev

# Vars
#RUN apt-get install -y multipath-tools

#RUN locale-gen en_US.UTF-8
#ENV LANG en_US.UTF-8
#ENV LANGUAGE en_US:en
#ENV LC_ALL en_US.UTF-8
#ENV RAILS_ENV production

#RUN export LANGUAGE=en_US.UTF-8
#RUN export LANG=en_US.UTF-8
#RUN export LC_ALL=en_US.UTF-8
#RUN locale-gen en_US.UTF-8

#RUN dpkg-reconfigure locales

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
RUN \curl -sSL https://get.rvm.io | bash -s stable --ruby=1.8.7
#RUN /bin/bash -l -c 'source ~/.rvm/scripts/rvm'
RUN /bin/bash -l -c 'rvm get head'
RUN /bin/bash -l -c 'rvm requirements'
RUN /bin/bash -l -c 'rvm use $RUBY_VERSION --default'
RUN /bin/bash -l -c 'rvm rubygems current'
RUN /bin/bash -l -c 'source /usr/local/rvm/scripts/rvm'

RUN /bin/bash -l -c 'ruby -v'
RUN /bin/bash -l -c 'gem list'

RUN /bin/bash -l -c 'gem install actionmailer -v 2.3.11'
RUN /bin/bash -l -c 'gem install actionmailer -v 2.3.5'
RUN /bin/bash -l -c 'gem install actionmailer -v 1.3.6'
RUN /bin/bash -l -c 'gem install actionpack -v 2.3.11'
RUN /bin/bash -l -c 'gem install actionpack -v 2.3.5'
RUN /bin/bash -l -c 'gem install actionpack -v 1.13.6'
RUN /bin/bash -l -c 'gem install actionwebservice -v 1.2.6'
RUN /bin/bash -l -c 'gem install activerecord -v 2.3.5'
RUN /bin/bash -l -c 'gem install activerecord -v 1.15.6'
RUN /bin/bash -l -c 'gem install activerecord-oracle_enhanced-adapter -v 1.3.0'
RUN /bin/bash -l -c 'gem install activeresource -v 2.3.5'
RUN /bin/bash -l -c 'gem install activesupport -v 2.3.11'
RUN /bin/bash -l -c 'gem install activesupport -v 2.3.5'
RUN /bin/bash -l -c 'gem install activesupport -v 1.4.4'
RUN /bin/bash -l -c 'gem install afm -v 0.2.0'
RUN /bin/bash -l -c 'gem install ansel_iconv -v 1.1.6'

RUN export HOME="/home/root"
RUN /bin/bash -l -c 'export HOME="/home/root"'

#RUN /bin/bash -l -c 'source /usr/root/rvm/scripts/rvm'

RUN /bin/bash -l -c 'gem list'

RUN /bin/bash -l -c 'gem install Ascii85 -v 1.0.1'
RUN /bin/bash -l -c 'gem install cgi_multipart_eof_fix -v 2.5.0'
RUN /bin/bash -l -c 'gem install choice -v 0.1.4'
RUN /bin/bash -l -c 'gem install fastercsv -v 1.5.4'
RUN /bin/bash -l -c 'gem install gem_plugin -v 0.2.3'
#RUN /bin/bash -l -c 'gem install google-spreadsheet-ruby -v 0.1.5'
RUN /bin/bash -l -c 'gem install gruff -v 0.3.7'
RUN /bin/bash -l -c 'gem install hashery -v 2.1.0'
RUN /bin/bash -l -c 'gem install htmldoc -v 0.2.3'
RUN /bin/bash -l -c 'gem install log4r -v 1.1.9'
RUN /bin/bash -l -c 'gem install mail -v 2.5.4'
RUN /bin/bash -l -c 'gem install mime-types -v 1.25'
RUN /bin/bash -l -c 'gem install mysql -v 2.8.1'
RUN /bin/bash -l -c 'gem install nokogiri -v 1.5.0'
RUN /bin/bash -l -c 'gem install oauth -v 0.4.5'
RUN /bin/bash -l -c 'gem install pdf-reader -v 1.1.1'
RUN /bin/bash -l -c 'gem install polyglot -v 0.3.3'
RUN /bin/bash -l -c 'gem install prawn -v 1.0.0.rc2'
RUN /bin/bash -l -c 'gem install rack -v 1.1.0'
RUN /bin/bash -l -c 'gem install rack -v 1.0.1'
RUN /bin/bash -l -c 'gem install rails -v 2.3.5'
RUN /bin/bash -l -c 'gem install rails -v 1.2.6'

RUN /bin/bash -l -c 'gem list'

RUN /bin/bash -l -c 'gem install rake -v 0.8.7'
RUN /bin/bash -l -c 'gem install rgl -v 0.4.0'
#RUN /bin/bash -l -c 'gem install roo -v 1.10.0'
RUN /bin/bash -l -c 'gem install ruby-ole -v 1.2.11.2'
RUN /bin/bash -l -c 'gem install ruby-rc4 -v 0.1.5'
RUN /bin/bash -l -c 'gem install rubyzip -v 0.9.4'
RUN /bin/bash -l -c 'gem install spreadsheet -v 0.6.5.9'
RUN /bin/bash -l -c 'gem install sqlite3-ruby -v 1.3.1'
RUN /bin/bash -l -c 'gem install stream -v 0.5'
RUN /bin/bash -l -c 'gem install todonotes -v 0.1.0'
RUN /bin/bash -l -c 'gem install treetop -v 1.4.15'
RUN /bin/bash -l -c 'gem install ttfunk -v 1.0.3'
RUN /bin/bash -l -c 'gem install tzinfo -v 0.3.29'

#--------------------
# http://stackoverflow.com/questions/5795309/gem-install-mysql-fail
# apt-get install libmysqlclient-dev -y
RUN /bin/bash -l -c 'gem install mysql -v 2.8.1'

# http://stackoverflow.com/questions/23510933/nokogiri-installation-error-for-ruby-1-8-7-for-linux-os
# apt-get install libxslt-dev libxml2-dev -y
RUN /bin/bash -l -c 'gem install nokogiri -v 1.5.0'

# http://stackoverflow.com/questions/20626408/prawn-requires-ruby-version-1-9-3
RUN /bin/bash -l -c 'gem install prawn -v 1.0.0.rc2'

RUN /bin/bash -l -c 'git clone https://github.com/roo-rb/roo.git /usr/local/rvm/gems/ruby-1.8.7-head/gems/roo-1.10.3'
WORKDIR /usr/local/rvm/gems/ruby-1.8.7-head/gems/roo-1.10.3
RUN /bin/bash -l -c 'git checkout v1.10.3'
RUN /bin/bash -l -c 'cp /usr/local/rvm/gems/ruby-1.8.7-head/gems/roo-1.10.3/roo.gemspec /usr/local/rvm/gems/ruby-1.8.7-head/specifications/roo.gemspec'

RUN /bin/bash -l -c 'gem install rmagick'

RUN /bin/bash -l -c 'gem install mongrel_service -v 0.4.0'
RUN /bin/bash -l -c 'gem install mongrel -v 1.1.5'
RUN /bin/bash -l -c 'gem install ffi -v 0.6.3'

RUN /bin/bash -l -c 'mkdir -p /opt/oracle'

RUN /bin/bash -l -c 'gem list'

WORKDIR /opt/oracle

COPY ./*.zip ./
COPY ./extract.sh ./

RUN /bin/bash -l -c 'chmod +x ./extract.sh'
RUN /bin/bash -l -c './extract.sh'
RUN /bin/bash -l -c 'ls'

WORKDIR /opt/oracle/instantclient_12_2/

RUN /bin/bash -l -c 'ln -s libclntsh.so.12.1 libclntsh.so'
ENV LD_LIBRARY_PATH /opt/oracle/instantclient_12_2
RUN /bin/bash -l -c 'LD_LIBRARY_PATH=/opt/oracle/instantclient_12_2'
RUN /bin/bash -l -c 'export LD_LIBRARY_PATH'
RUN /bin/bash -l -c 'mkdir -p /usr/include/sys && ln -s /usr/include/linux/types.h /usr/include/sys/types.h'

RUN /bin/bash -l -c 'gem install ruby-oci8 -v 1.0.2'

RUN /bin/bash -l -c 'gem list'

RUN /bin/bash -l -c 'mkdir -p /repo'
WORKDIR /repo

CMD ["sh", "-c", "/bin/bash -l -c 'LD_LIBRARY_PATH=/opt/oracle/instantclient_12_2' ; /bin/bash -l -c 'export LD_LIBRARY_PATH' ; /bin/bash -l -c 'cd ./Licenze_Rails_2_3_11/ && ruby script/server webrick' ; /bin/bash -l"]
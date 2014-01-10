FROM stackbrew/ubuntu:13.10

RUN apt-get update

# install openjdk-7, getting around the fuse requirement with fakeroot
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q fakeroot 
RUN DEBIAN_FRONTEND=noninteractive fakeroot apt-get install -y -q openjdk-7-jdk

# dependencies for building zeromq
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q build-essential 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q autoconf automake libtool
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q uuid-dev

# curl
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q curl 

# build & install zeromq
RUN curl "http://download.zeromq.org/zeromq-3.2.4.tar.gz" | tar xzf -
RUN cd zeromq-3.2.4 && ./configure
RUN cd zeromq-3.2.4 && make
RUN cd zeromq-3.2.4 && make install
RUN ldconfig
RUN rm -Rf zeromq-3.2.4

# dependencies for building jzmq
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q pkg-config
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q unzip 

# build & install jzmq
RUN curl --location https://github.com/zeromq/jzmq/archive/master.zip -o jzmq-master.zip
RUN unzip jzmq-master.zip
RUN cd jzmq-master && ./autogen.sh
RUN cd jzmq-master && ./configure
RUN cd jzmq-master && make
RUN cd jzmq-master && make install

# create patavi user
RUN useradd --create-home --home /var/lib/patavi patavi

# download & install leiningen
RUN su patavi -c 'mkdir /var/lib/patavi/bin'
RUN su patavi -c 'curl "https://raw.github.com/technomancy/leiningen/stable/bin/lein" -o /var/lib/patavi/bin/lein' 
RUN chmod +x /var/lib/patavi/bin/lein
RUN su - patavi -c 'lein upgrade'

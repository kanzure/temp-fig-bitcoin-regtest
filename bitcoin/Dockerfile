FROM orchardup/python:2.7

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 8842ce5e
RUN echo "deb http://ppa.launchpad.net/bitcoin/bitcoin/ubuntu trusty main" > /etc/apt/sources.list.d/bitcoin.list
RUN apt-get update
RUN apt-get install -y bitcoind

EXPOSE 8332 8333

RUN mkdir /.bitcoin/
ADD ./config/regtest.conf /.bitcoin/bitcoin.conf
RUN chmod -R 700 /.bitcoin

ADD ./start.sh /
RUN chmod o+x /start.sh

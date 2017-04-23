FROM golang:1.6-wheezy

RUN apt-get update && apt-get install -y nfs-common zip uuid-runtime curl wget && apt-get clean

ADD app /usr/src/cron
ADD build.sh /opt/build.sh

RUN chmod a+x /opt/build.sh
RUN /opt/build.sh

CMD ["/opt/cron"]
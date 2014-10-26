FROM flitter/init

RUN wget -O /tmp/drone.deb http://downloads.drone.io/master/drone.deb && \
    dpkg -i /tmp/drone.deb && \
    apt-get -f install # 9041039939c8b20e8db7c3dc8314c746  drone.deb Sat Oct 25 21:01:34 PDT 2014

ADD drone /etc/service/drone/run
CMD /sbin/my_init

EXPOSE 8080

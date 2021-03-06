FROM centos:latest
MAINTAINER a4neg@yandex.ru

ENV LC_ALL=C.UTF-8 LANG=ru_RU.UTF-8 LANGUAGE=ru_RU.UTF-8 TERM=xterm

CMD  ["/usr/sbin/init"]

ADD	./files/ /tmp/
RUN chmod +x /tmp/install.sh && /tmp/install.sh

ENV LANG ru_RU.UTF-8
ENV LANGUAGE ru_RU:en
ENV LC_ALL ru_RU.UTF-8

ADD rpm/*.rpm /tmp/
RUN yum -y localinstall /tmp/*.rpm

COPY logcfg.xml /opt/1C/v8.3/x86_64/conf/

VOLUME /home/usr1cv8
VOLUME /var/log/1C
VOLUME ["/home/docker/1c:/opt

EXPOSE 1540-1541 1560-1591

ENTRYPOINT ["/opt/1C/v8.3/x86_64/ragent"]
FROM ubuntu:14.04
MAINTAINER Ross Kilgariff <rosskilgariff@gmail.com>

RUN \
   apt-get update && \
   apt-get install -y samba

RUN \
   mkdir /storage && \
   chown -R nobody:nogroup /storage

ADD etc/samba/smb.conf /etc/samba/smb.conf
ADD run-samba.sh /root/run-samba.sh

ENV HOME /root

WORKDIR /root

EXPOSE 137/tcp
EXPOSE 137/udp
EXPOSE 138/tcp
EXPOSE 138/udp
EXPOSE 139/tcp
EXPOSE 139/udp

CMD ["./run-samba.sh"]

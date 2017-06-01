FROM titpetric/netdata

MAINTAINER Eric Faden <efaden@gmail.com>

ENV DEBIAN_FRONTEND="noninteractive" 

ADD run2.sh /run2.sh
RUN chmod +x /run2.sh

ENTRYPOINT ["/run2.sh"]
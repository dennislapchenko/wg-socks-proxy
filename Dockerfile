FROM ubuntu:20.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
      wireguard iproute2 iptables dante-server openresolv && \
    apt-get clean

COPY danted.conf /etc/danted.conf
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]

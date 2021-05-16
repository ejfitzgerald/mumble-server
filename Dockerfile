FROM debian:buster-slim

RUN apt-get update
RUN apt-get install -y --no-install-recommends mumble-server

VOLUME /var/lib/mumble-server

ENTRYPOINT [ "/usr/sbin/murmurd", "-fg" ]
CMD []

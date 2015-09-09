FROM anishitani/docker-java
MAINTAINER André Nishitani <andre.nishitani@gmail.com>

ENV GF_MAJOR 4
ENV GF_MINOR 1
ENV GF_VERSION $GF_MAJOR.$GF_MINOR

RUN /scripts/init_squid_cache.sh

RUN apt-get update -y && apt-get install -y unzip \
  && wget http://download.java.net/glassfish/$GF_VERSION/release/glassfish-$GF_VERSION.zip \
  && unzip -d /opt glassfish-$GF_VERSION.zip \
  && apt-get purge -y unzip \
  && apt-get autoclean && apt-get --purge -y autoremove \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN /scripts/stop_squid_cache.sh

ADD ./start.sh /scripts/start.sh

CMD [ "sh" , "/scripts/start.sh" ]

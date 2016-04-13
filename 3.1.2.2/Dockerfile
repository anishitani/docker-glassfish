FROM anishitani/docker-java:oracle-7
MAINTAINER André Nishitani <andre.nishitani@gmail.com>

ENV GF_MAJOR 3
ENV GF_MINOR 1
ENV GF_BUILD 2.2
ENV GF_VERSION $GF_MAJOR.$GF_MINOR.$GF_BUILD
ENV GF_DIR /opt/glassfish$GF_MAJOR

RUN apt-get update -y && apt-get install -y unzip wget \
  && wget http://download.java.net/glassfish/$GF_VERSION/release/glassfish-$GF_VERSION.zip \
  && unzip -d /opt glassfish-$GF_VERSION.zip \
  && apt-get purge -y unzip \
  && apt-get autoclean && apt-get --purge -y autoremove \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* glassfish-$GF_VERSION.zip

RUN addgroup --system glassfish \
  && adduser --system --shell /bin/bash --ingroup glassfish glassfish \
  && chown -R glassfish:glassfish $GF_DIR

ADD ./start.sh /scripts/start.sh
RUN chmod +x /scripts/start.sh

ENTRYPOINT [ "/scripts/start.sh" ]

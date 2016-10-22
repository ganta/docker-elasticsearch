FROM elasticsearch:2.4.1
MAINTAINER Hideki Igarashi <hideki.develop@gmail.com>

RUN plugin install analysis-kuromoji && \
    plugin install analysis-icu

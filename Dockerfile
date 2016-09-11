FROM elasticsearch:2.4.0
MAINTAINER Hideki Igarashi <hideki.develop@gmail.com>

RUN plugin install analysis-kuromoji \
    plugin install analysis-icu

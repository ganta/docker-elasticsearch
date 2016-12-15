FROM elasticsearch:5.1.1-alpine
MAINTAINER Hideki Igarashi <hideki.develop@gmail.com>

RUN elasticsearch-plugin install analysis-kuromoji && \
    elasticsearch-plugin install analysis-icu

COPY config/elasticsearch.yml /usr/share/elasticsearch/config/

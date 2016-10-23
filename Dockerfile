FROM elasticsearch:2.4.1
MAINTAINER Hideki Igarashi <hideki.develop@gmail.com>

RUN plugin install analysis-kuromoji && \
    plugin install analysis-icu

# Add the following line to enable CORS to connect to local elasticsearch.
RUN echo 'http.cors.allow-origin: "*"' >> /usr/share/elasticsearch/config/elasticsearch.yml
RUN echo 'http.cors.enabled: true' >> /usr/share/elasticsearch/config/elasticsearch.yml

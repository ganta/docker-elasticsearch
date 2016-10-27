FROM elasticsearch:5.0.0
MAINTAINER Hideki Igarashi <hideki.develop@gmail.com>

RUN elasticsearch-plugin install analysis-kuromoji && \
    elasticsearch-plugin install analysis-icu

# Add the following line to enable CORS to connect to local elasticsearch.
RUN echo 'http.cors.allow-origin: "*"' >> /usr/share/elasticsearch/config/elasticsearch.yml
RUN echo 'http.cors.enabled: true' >> /usr/share/elasticsearch/config/elasticsearch.yml

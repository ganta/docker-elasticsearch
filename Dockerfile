FROM elasticsearch:5.1.1-alpine

RUN elasticsearch-plugin install analysis-kuromoji && \
    elasticsearch-plugin install analysis-icu

COPY config/elasticsearch.yml /usr/share/elasticsearch/config/

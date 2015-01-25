FROM java:openjdk-7-jre

# logstash
RUN curl -L https://download.elasticsearch.org/logstash/logstash/logstash-1.4.2.tar.gz \
  | tar -xz --directory /usr/local/src --strip-components 1

COPY envconf /usr/local/bin/
COPY logstash_run /usr/local/bin/
COPY logstash.conf.env /usr/local/src/

CMD ["logstash_run"]
EXPOSE 9300 25826/udp

# http://logstash.net/docs/1.4.2/outputs/elasticsearch
# If using the default protocol setting (“node”), your firewalls might need to permit port 9300 in both directions (from Logstash to Elasticsearch, and Elasticsearch to Logstash)
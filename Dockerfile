from ubuntu:14.04
env DEBIAN_FRONTEND noninteractive

# locales
#env LC_ALL C.UTF-8

# helper
run apt-get update && apt-get install -y curl
# git vim less gzip bzip2 unzip byobu jq

# java
run apt-get update && apt-get install -y default-jre-headless

# logstash
run mkdir -p /opt/logstash && \
  curl -L https://download.elasticsearch.org/logstash/logstash/logstash-1.4.2.tar.gz | \
  tar -xz --directory /opt/logstash --strip-components 1

add envconf /usr/local/bin/
add logstash_run /usr/local/bin/
add logstash.conf.env /opt/logstash/

cmd ["logstash_run"]
expose 9300 25826/udp

# http://logstash.net/docs/1.4.2/outputs/elasticsearch
# If using the default protocol setting (“node”), your firewalls might need to permit port 9300 in both directions (from Logstash to Elasticsearch, and Elasticsearch to Logstash)
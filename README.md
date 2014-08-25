docker-logstash
===============

Config on client without any authentication or encryption enabeled.

$ apt-get install collectd-core

/etc/collectd/collectd.conf

    FQDNLookup false
    LoadPlugin interface
    LoadPlugin load
    LoadPlugin memory
    LoadPlugin network
    <Plugin interface>
        Interface "eth0"
        IgnoreSelected false
    </Plugin>
    <Plugin network>
        Server "kibana"
    </Plugin>

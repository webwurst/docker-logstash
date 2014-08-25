docker-logstash
===============

Config on client without any authentication or encryption enabeled.

/etc/collectd/collectd.conf

	LoadPlugin interface
	LoadPlugin load
	LoadPlugin memory
	LoadPlugin network
	<Plugin interface>
	    Interface "eth0"
	    IgnoreSelected false
	</Plugin>
	<Plugin network>
	    <Server "kibana">
	    </Server>
	</Plugin>

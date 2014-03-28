#
# Set minion config
default['minion']['master'] = "salt"
default['minion']['master_port'] = 4506
default['minion']['pidfile'] = "/var/run/salt-minion.pid"
#
# Set master config
default['master']['interface'] = "0.0.0.0"
default['master']['publish_port'] = 4505
default['master']['user'] = "root"
default['master']['pidfile'] = "/var/run/salt-master.pid"

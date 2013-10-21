default['minion']['master']['name'] = "salt"
default['minion']['master']['port'] = 4506
default['minion']['pidfile'] = "/var/run/salt-minion.pid"
default['minion']['user'] = "root"


default['master']['interface'] = "0.0.0.0"
default['master']['port'] = 4505
default['master']['user'] = "root"
default['master']['pidfile'] = "/var/run/salt-master.pid"

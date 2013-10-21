#
# Cookbook Name:: saltstack
# Recipe:: minion
#
# Copyright 2013, cb@skeptomai.com
#
# All rights reserved - Do Not Redistribute
#


include_recipe "saltstack"

package "salt-minion" do
  action :install
end

service "salt-minion" do
  action :nothing
end

template "/etc/salt/minion" do
  source "minion.erb"
  variables({:master => node['minion']['master']['name'],
              :master_port => node['minion']['master']['port'],
              :pidfile => node['minion']['pidfile'],
              :user => node['minion']['user']})
  notifies :restart, "service[salt-minion]", :immediately
end


#
# Cookbook Name:: saltstack
# Recipe:: master
#
# Copyright 2013, cb@skeptomai.com
#
# All rights reserved - Do Not Redistribute
#


include_recipe "saltstack"

package "salt-master" do
  action :install
end

service "salt-master" do
  action :nothing
end

template "/etc/salt/master" do
  source "master.erb"
  variables({:interface => node['master']['interface'],
              :publish_port => node['master']['port'],
              :pidfile => node['master']['pidfile'],
              :user => node['master']['user']})
  notifies :restart, "service[salt-master]", :immediately
end



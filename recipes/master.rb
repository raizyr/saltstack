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
  helpers(SaltConfigHelper)
  variables({ :master => node['master'] })
  notifies :restart, "service[salt-master]", :immediately
end



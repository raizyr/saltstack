#
# Cookbook Name:: saltstack
# Recipe:: default
#
# Copyright 2013, cb@skeptomai.com
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'

apt_repository "saltstack-ppa" do
  uri "http://ppa.launchpad.net/saltstack/salt/ubuntu"
  distribution node['lsb']['codename']
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "0E27C0A6"
end




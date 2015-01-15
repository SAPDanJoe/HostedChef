#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package "ntp" do
  action :install
end

package "ntpdate" do
  action :install
end

template "/etc/ntp.conf" do
  action :create
  source "ntp.erb"
  owner "root"
  group "root"
  mode "0644"
end

service "ntpd" do
  action [:start, :enable]
end

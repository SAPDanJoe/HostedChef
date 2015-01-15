#
# Cookbook Name:: iptables
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
#
service "iptables" do
  action [:stop, :disable]
end

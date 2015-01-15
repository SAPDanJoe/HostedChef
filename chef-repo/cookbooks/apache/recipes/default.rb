#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# if we wanted to use the node attributes to make decisions
#we would use something like the below ruby code
#
#apache_package_name = "httpd"
#
#if node["platform"] == "ubuntu"
#	apache_package_name = "apache2"
#end

package "httpd" do
	action :install
end

service "httpd" do
	action [:enable, :start]
end

template '/var/www/html/index.html' do
	source "index.html.erb"
	mode "0644"
	owner "root"
	group "root"
end

template '/etc/httpd/conf/httpd.conf' do
	source "httpd.conf.erb"
	mode "0644"
	owner "root"
	group "root"
	notifies :restart, "service[httpd]"
end

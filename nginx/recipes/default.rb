#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'nginx' do
	action :install
end

template "/usr/share/nginx/html/index.html" do
	source "index.html.erb"
	variables(:friend => "George")
end

service "nginx" do
	action [ :enable, :start ]
end

#
# Cookbook:: cinc-cookbook-apple-silicon
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.

package "httpd" do
  action :install
end

service "httpd" do
  action [:enable, :start]
end

template "/var/www/html/index.html" do
  source "index.html.erb"
end
#
# Cookbook Name:: munkiSSL
# Recipe:: munki
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


directory "/Library/Managed\ Installs/certs" do
  recursive true
  owner "root"
  owner "admin"
  mode "0755"
end

file "/Library/Managed\ Installs/certs/ca.pem" do
  content IO.read("/etc/ssl/chef_ca.cert")
  action :create
end

file "/Library/Managed\ Installs/certs/clientcert.pem" do
  content IO.read("/etc/ssl/chef.sacredsf.org.cert")
  action :create
end

file "/Library/Managed\ Installs/certs/clientkey.pem" do
  content IO.read("/etc/ssl/chef.sacredsf.org.key")
  action :create
end

# Not sure if this will work
file "/Users/Shared/.com.googlecode.munki.checkandinstallatstartup" do
  action :create
end
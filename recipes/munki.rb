#
# Cookbook Name:: munkiSSL
# Recipe:: munki
#
# Copyright 2015, Nick McSpadden
#
# All rights reserved - Do Not Redistribute
#

include_recipe "chef-client::delete_validation"

directory "/Library/Managed\ Installs/certs" do
  recursive true
  owner "root"
  owner "admin"
  mode "0700"
end

file "/Library/Managed\ Installs/certs/ca.pem" do
  content IO.read("/etc/ssl/munki2_ca.crt")
  action :create
end

file "/Library/Managed\ Installs/certs/clientcert.pem" do
  content IO.read("/etc/ssl/munki2.sacredsf.org.crt")
  action :create
end

file "/Library/Managed\ Installs/certs/clientkey.pem" do
  content IO.read("/etc/ssl/munki2.sacredsf.org.key")
  action :create
end

file "/Users/Shared/.com.googlecode.munki.checkandinstallatstartup" do
  action :create
end
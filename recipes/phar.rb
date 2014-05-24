#
# Cookbook Name:: phpcb
# Recipe:: phar
#
# Copyright 2013-2014, Escape Studios
#

remote_file "#{node['phpcb']['install_dir']}/phpcb" do
  source node['phpcb']['phar_url']
  mode 0755
end

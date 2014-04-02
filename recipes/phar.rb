#
# Cookbook Name:: phpcb
# Recipe:: phar
#
# Copyright 2013-2014, Escape Studios
#

if node['phpcb']['install_dir'] != ""
    phpcb_dir = node['phpcb']['install_dir']
else
    phpcb_dir = "#{Chef::Config['file_cache_path']}/phpcb"
end

directory "#{phpcb_dir}" do
    owner "root"
    group "root"
    mode "0755"
    action :create
end

remote_file "#{phpcb_dir}/phpcb.phar" do
    source node['phpcb']['phar_url']
    mode "0755"
end
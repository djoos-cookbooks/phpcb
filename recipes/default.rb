#
# Cookbook Name:: phpcb
# Recipe:: default
#
# Copyright 2013-2014, Escape Studios
#

case node['phpcb']['install_method']
    when "composer"
        include_recipe "phpcb::composer"
    when "phar"
        include_recipe "phpcb::phar"
end
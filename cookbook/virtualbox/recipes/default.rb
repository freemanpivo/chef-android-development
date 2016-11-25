#
# Cookbook Name:: chef-recipe-android
# Recipe:: default.rb - Virtualbox Recipe
# 
# Copyright 2016, Pedro Ivo de Andrade
#
# 

execute "install virtualbox" do
    command "apt-get install -y virtualbox"
    user "root"
    action :run
end

execute "install virtualbox-dkms" do
    command "apt-get install -y virtualbox-dkms"
    user "root"
    action :run
end


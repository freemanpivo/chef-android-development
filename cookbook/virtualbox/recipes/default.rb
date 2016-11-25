#
# Cookbook Name:: chef-recipe-android
# Recipe:: default.rb - Virtualbox Recipe
# 
# Copyright 2016, Pedro Ivo de Andrade
#
# 

# Install virtualbox
execute "install virtualbox" do
    command "apt-get install -y virtualbox"
    user "root"
    action :run
end

# Install virtualbox-dkms
execute "install virtualbox-dkms" do
    command "apt-get install -y virtualbox-dkms"
    user "root"
    action :run
end


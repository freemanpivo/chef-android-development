#
# Cookbook Name:: chef-recipe-android
# Recipe:: default.rb - Genymotion Recipe
# 
# Copyright 2016, Pedro Ivo de Andrade
#
# 

# Creates genymotion folder
directory '/home/android/genymotion' do
    owner 'android'
    mode '0755'
    action :create
end

# Download Genymotion
remote_file '/home/android/genymotion/genymotion.bin' do
    source 'http://files2.genymotion.com/genymotion/genymotion-2.2.0/genymotion-2.2.0_x64_debian.bin'
    owner 'android'
    mode '0755'
    action :create
end

# Change permission of bin file
execute "Change permissions" do
    command "chmod +x /home/android/genymotion/genymotion.bin"
    user "android"
    action :run
end

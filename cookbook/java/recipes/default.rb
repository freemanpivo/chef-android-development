#
# Cookbook Name:: chef-recipe-android
# Recipe:: default.rb
# 
# Copyright 2016, Pedro Ivo de Andrade
#
# 


# Add Oracle JDK to sources list.
file '/etc/apt/sources.list.d/webupd8team-java.list' do
    content 'deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main
deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main'
    mode '0755'
    owner 'root'
    group 'root'
end

# Install Oracle JDK
execute 'apt-get update'
execute "install jdk oracle" do
    command " apt-get install -y oracle-java8-installer"
    user "root"
    action :run
end

# Define Oracle JDK as default Java compiler
execute "oracle jdk as default" do
	command "apt-get install -y oracle-java8-set-default"
	user "root"
	action :run
end

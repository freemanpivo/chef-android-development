#
# Cookbook Name:: chef-recipe-android
# Recipe:: default.rb
# 
# Copyright 2016, Pedro Ivo de Andrade
#
# 


# Create Android User folder.
user 'android' do 
	comment "Android developer user"
	uid '1234'
	gid 'root'
	home '/home/android'
	shell '/bin/bash'
	action :create
end

# Defines android user folder owner and permissions.
directory '/home/android' do
	owner 'android'
	mode '0755'
	action :create
	not_if {File.exist?("/home/android/")}
end

#Install Dependencies for amd64 OS.
execute "installing libs for amd64 architecture"
	command "apt-get install -y libtinfo5"
	user "root"
	action :run
end
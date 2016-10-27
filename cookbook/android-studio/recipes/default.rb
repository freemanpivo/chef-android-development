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

# Install Dependencies for amd64 OS.
execute "installing libs for amd64 architecture" do
	command "apt-get install -y libtinfo5"
	user "root"
	action :run
end

# List of packages needed
package 'wget'
package 'unzip'

# Create studio folder in android user.
directory '/home/android/android-studio' do
    owner 'android'
    mode '0755'
    action :create
end

# Android Studio Settings
android_studio_version = "2.2.1.0"
android_studio_build = "145.3330264"
android_studio_file = android_studio_version + '/android-studio-ide-' + android_studio_build + '-linux.zip'
android_studio_dlpath = "https://dl.google.com/dl/android/studio/ide-zips/"
android_studio_link = android_studio_dlpath + android_studio_file

# Install Android Studio 
remote_file '/home/android/android-studio/android-studio.zip' do
    source android_studio_link
    owner 'android'
    mode '0755'
    action :create
end
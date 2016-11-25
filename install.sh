#!/bin/bash
# Created by freemanpivo - Chef installation script

# Update system
sudo apt-get update

# Install git
sudo apt-get install -y git

# Install chef
sudo apt-get install -y chef

# Install all recipes
sudo chef-apply cookbook/java/recipes/default.rb
sudo chef-apply cookbook/android-studio/recipes/default.rb
sudo chef-apply cookbook/virtualbox/recipes/default.rb
sudo chef-apply cookbook/genymotion/recipes/default.rb


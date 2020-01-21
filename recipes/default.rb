#
# Cookbook:: python_app
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
include_recipe 'nodejs'
include_recipe 'apt'
include_recipe 'poise-python'
#npm installs
#include_recipe 'pm2'
apt_update 'update_sources' do
  action :update
end
package 'python'

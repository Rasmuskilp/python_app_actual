#
# Cookbook:: python_app
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#include_recipe 'nodejs'
#include_recipe 'apt'
#include_recipe 'poise-python'
#npm installs
#include_recipe 'pm2'
apt_update 'update_sources' do
  action :update
end
#python_runtime '3'
 # python_runtime 'install_python' do
 #   version '3'
 # end
 #   sudo npm install pm2 -g

 bash 'install python and etc'do
   code <<-EOH
   sudo apt-get update -y
   sudo apt-get upgrade -y
   sudo apt-get install nginx -y
   sudo apt-get install git -y
   sudo apt-get install python-dev python-pip -q -y
   curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
   sudo apt-get install nodejs -y
   sudo apt-get install python3-pip -y
   sudo apt-get install python-setuptools
   sudo easy_install pip
   EOH
 end
#package 'python'
python 'install packages' do
code <<-EOH
pip install "atomicwrites"
pip install "attrs"
pip install "beautifulsoup4"
pip install "certifi"
pip install "colorama"
pip install "idna"
pip install "importlib-metadata"
pip install "more-itertools"
pip install "packaging"
pip install "pluggy"
pip install "py"
pip install "pyodbc"
pip install" pyparsing"
pip install "pytest"
pip install "requests"
pip install "setuptools"
pip install "six"
pip install "soupsieve"
pip install "urllib3"
pip install "wcwidth"
pip install "zipp"
EOH
end
bash 'run tests' do
  code <<-EOH
  cd app
  python -m pytest tests
  EOH
end
# remote_directory '/home/ubuntu/app' do
# source 'It_Jobs_Watch_Data_Package-master'
# owner 'root'
# group 'root'
# mode '0777'
# action :create
# end

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
#   sudo easy_install pip
#   sudo apt-get install python-dev python-pip -q -y
#alias python=python3
 bash 'install python and etc'do
   code <<-EOH
   sudo apt-get update -y
   sudo apt-get upgrade -y
   sudo apt-get install nginx -y
   sudo apt-get install git -y
   sudo apt-get install python3.7 -y
   curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
   sudo apt-get install nodejs -y
   alias python=python3
   sudo apt-get install python3-pip -y
   sudo apt-get install python-setuptools -y
   sudo apt-get install python3-pytest -y
   EOH
 end
#package 'python'
#pip install -r app/requirements.txt

bash 'install packages' do
code <<-EOH
pip3 install "atomicwrites"
pip3 install "attrs"
pip3 install "beautifulsoup4"
pip3 install "certifi"
pip3 install "colorama"
pip3 install "idna"
pip3 install "importlib-metadata"
pip3 install "more-itertools"
pip3 install "packaging"
pip3 install "pluggy"
pip3 install "py"
pip3 install "pyodbc"
pip3 install" pyparsing"
pip3 install "pytest"
pip3 install "requests"
pip3 install "setuptools"
pip3 install "six"
pip3 install "soupsieve"
pip3 install "urllib3"
pip3 install "wcwidth"
pip3 install "zipp"
EOH
end
# bash 'run tests' do
#   code <<-EOH
#   cd ~/app
#   python3 -m pytest tests/
#   EOH
# end
# remote_directory '/home/ubuntu/app' do
# source 'It_Jobs_Watch_Data_Package-master'
# owner 'root'
# group 'root'
# mode '0777'
# action :create
# end

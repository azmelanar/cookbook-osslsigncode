#
# Cookbook Name:: osslsigncode
# Recipe:: default
#
# Copyright 2016, Dmytro Slupytskyi
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'build-essential'

configure_options = node['osslsigncode']['configure_options'].join(' ')
make_options = node['osslsigncode']['make_options'].join(' ')

%w(gcc automake libcurl4-openssl-dev).each do |pkg|
  package pkg
end

version = node['osslsigncode']['version']
install_path = "#{node['osslsigncode']['prefix_dir']}/bin/osslsigncode"

remote_file "#{Chef::Config[:file_cache_path]}/osslsigncode-#{version}.tar.gz" do
  source "#{node['osslsigncode']['url']}/osslsigncode-#{node['osslsigncode']['version']}.tar.gz"
  checksum node['osslsigncode']['checksum']
  mode '0644'
  not_if { ::File.exist?(install_path) }
end

bash 'build-and-install-osslsigncode' do
  cwd Chef::Config[:file_cache_path]
  code <<-EOF
  tar -xzvf osslsigncode-#{version}.tar.gz
  (cd osslsigncode-#{version} && ./configure #{configure_options})
  (cd osslsigncode-#{version} && make && make #{make_options})
  EOF
  not_if { ::File.exist?(install_path) }
end

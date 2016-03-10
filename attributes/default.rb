#
# Cookbook Name:: osslsigncode
# Attributes:: default
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

default['osslsigncode']['version'] = '1.7.1'
default['osslsigncode']['url'] = 'http://downloads.sourceforge.net/project/osslsigncode/osslsigncode'
default['osslsigncode']['checksum'] = 'f9a8cdb38b9c309326764ebc937cba1523a3a751a7ab05df3ecc99d18ae466c9'

default['osslsigncode']['prefix_dir'] = '/usr/local'

default['osslsigncode']['configure_options'] = ["--prefix=#{node['osslsigncode']['prefix_dir']}"]
default['osslsigncode']['make_options'] = %w(install)

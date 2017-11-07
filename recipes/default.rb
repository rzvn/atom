#
# Cookbook:: atom
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

bash 'downloaez atom' do
 code <<-AAA  
 wget https://atom.io/download/rpm -O /tmp/atom.rpm
 #yum install /tmp/atom.rpm
 AAA
 not_if "ls -l /tmp/atom.rpm"
end

#bash 'instalez atom' do
# code <<-AAA
 #yum install /tmp/atom.rpm
#AAA
 package '/tmp/atom.rpm'





#!/usr/bin/env ruby
require 'rubygems'
require 'fog'

#connection = Fog::Compute.new({ :provider => 'AWS', :region => 'us-west' })
connection = Fog::Compute.new({ :provider => 'AWS'})

server = connection.servers.bootstrap({
  :public_key_path => '~/.ssh/id_rsa.pub',
	:flavor_id => 't1.micro', 
	:private_key_path => '~/.ssh/id_rsa',
  :username => 'ubuntu'
}) 

#	:image_id => "ami-3e800c0e",
#	:flavor_id => 't1.micro', 
	
save the url for the server


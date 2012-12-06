#!/usr/bin/env ruby
require 'webrick'

options = {
	:Port => 4000,
	:DocumentRoot => Dir.pwd + '/_site'
}

Server  = WEBrick::HTTPServer.new options

trap('INT') do
	Server.shutdown
end
Server.start


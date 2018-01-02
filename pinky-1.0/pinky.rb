#!/usr/bin/env ruby

# Author:: Andrew Pennebaker (andrew.pennebaker@gmail.com)
# Copyright:: Copyright 2008 YelloSoft
# License:: GPLv3
# URL:: http://yellosoft.us/index.php?id=86

# Note: you'll have to change the line endings
# to LF for the dot slash shebang to work.

require "webrick"

PINKY_DIR=File.dirname($0)

ADDRESS="localhost"
PORT="8000"

WEB_MOUNT="/"
WEB_ROOT="#{PINKY_DIR}/../HTML"
WEB_PUBLIC="#{PINKY_DIR}/../HTML"

#if RUBY_PLATFORM =~ /mswin|mingw/
#  WEB_ROOT="#{PINKY_DIR}\..\HTML"
#  WEB_PUBLIC="#{PINKY_DIR}\..\HTML"
#end

SHOW_DIRECTORY_INDEX=true

mime_types = WEBrick::HTTPUtils::DefaultMimeTypes
mime_types.store 'svg', 'image/svg+xml'
mime_types.store 'mp4', 'video/mp4'
mime_types.store 'webm', 'video/webm'

#puts mime_types
#pid = fork do

server=WEBrick::HTTPServer.new(
    	:BindAddress => ADDRESS,
    	:Port => PORT,
    	:DocumentRoot => WEB_ROOT,
    	:Logger => WEBrick::Log.new(STDOUT, WEBrick::BasicLog::WARN),
    	#:Logger => WEBrick::Log.new(RUBY_PLATFORM =~ /mswin|mingw/ ? 'NUL:' : '/dev/null', 7),
    	:AccessLog => []
)

server.mount(
       WEB_MOUNT,
       WEBrick::HTTPServlet::FileHandler,
       WEB_PUBLIC,
       SHOW_DIRECTORY_INDEX
)

#end

#puts "Pinky running on http://#{ADDRESS}:#{PORT}/. Press Control+C to exit.\n"

#puts "Cargando Multimedia"

system(server.start)

if RUBY_PLATFORM =~ /mswin|mingw/
    system("#{PINKY_DIR}/../FirefoxPortable/FirefoxPortable.exe http://localhost:#{PORT}") 
end

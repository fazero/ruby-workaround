require 'webrick'
require 'erb'
server = WEBrick::HTTPServer.new(:Port=>8080)
server.mount('/', WEBrick::HTTPServlet::ERBHandler, 'index.html')
server.start

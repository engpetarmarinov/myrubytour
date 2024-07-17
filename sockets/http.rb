# frozen_string_literal: true

require 'json'
require 'webrick'

# Create a new WEBrick HTTP server on port 8080
server = WEBrick::HTTPServer.new(Port: 8080)

# Define a new servlet for the /home route
class HomeServlet < WEBrick::HTTPServlet::AbstractServlet
  def do_GET(request, response)
    response.status = 200
    response.content_type = 'text/plain'
    response.body = 'home'
  end
end

# Mount the servlet to the /home route
server.mount '/home', HomeServlet

# Define a custom 404 error handler
server.mount_proc '/' do |request, response|
  response.status = 404
  response.content_type = 'text/plain'
  response.body = '404'
end

# Define a new servlet for the /json route
class JsonServlet < WEBrick::HTTPServlet::AbstractServlet
  def do_GET(request, response)
    response.status = 200
    response.content_type = 'application/json'
    response.body = { data: [1, 2, 3, 4] }.to_json
  end
end

# Mount the servlet to the /json route
server.mount '/json', JsonServlet

# Trap interrupt signal to gracefully shutdown the server
trap('INT') { server.shutdown }

# Start the server
server.start

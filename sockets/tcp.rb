# frozen_string_literal: true

require 'socket'

port = '8080'
server = TCPServer.new(port)
puts "Server starts on port #{port}"

threads = []
loop do
  client = server.accept
  puts "Client connected: #{client}"

  threads << Thread.new(client) do |conn|
    loop do
      msg = conn.gets.chomp.downcase
      puts "Received message: #{msg}"

      if msg == 'ping'
        conn.puts 'pong'
        puts 'Sent response: pong'
      elsif msg == 'quit'
        conn.puts 'Quit received. Closing the connection.'
        conn.close
        puts 'Client disconnected!'
        break
      else
        conn.puts 'Unknown msg'
        puts 'Sent response: unknown msg'
      end
    end
  end
end

threads.each(&:join)

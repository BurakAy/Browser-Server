require "socket" # Sockets from stdlib (standard library)

server = TCPServer.open(2000) # Socket listens on port 2000
loop {
	client = server.accept # Wait for client to connect. Returns TCPSocket representing connection
	client.puts(Time.now.ctime) # Send time to client, change time
	client.puts "Closing the connection. Bye!"
	client.close
}
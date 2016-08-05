require 'socket'
host = 'localhost'
port = 12000
server = TCPServer.new(host, port)
path = 'index.html'

while (session = server.accept)
	response = File.read(path)
	puts "\r\n"
	puts "Request: A page from local host\n"
	puts "HTTP/1.1 200/OK\r\nContent-type: text/html\r\nContent-length: #{response.length}\r\n\r\n"
	puts response
	session.close
end









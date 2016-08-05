require 'socket'
host = 'localhost'
port = 12000

s = TCPSocket.open(host, port)
s.close


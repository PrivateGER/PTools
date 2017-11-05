require 'digest'
system 'clear' or 'cls'
puts "Checksum Generator"
print "Filename: "
filename = gets.chomp
filecontent = File.read(filename)
puts "Available modes: MD5, SHA1, SHA512"
print "Mode: "
mode = gets.chomp
case mode
when "MD5"
checksum = Digest::MD5.hexdigest(filecontent)
when "SHA1"
checksum = Digest::SHA1.hexdigest(filecontent)
when "SHA512"
checksum = Digest::SHA512.hexdigest(filecontent)
end
puts "Checksum is: #{checksum}"
puts "Press ENTER to continue..."
gets
load 'PTools.rb'

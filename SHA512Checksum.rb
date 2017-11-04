require 'digest'
system 'clear' or 'cls'
puts "SHA512 Checksum Generator"
print "Filename: "
filename = gets.chomp
filecontent = File.read(filename)
puts "Checksum is: #{Digest::SHA512.hexdigest(filecontent)}"
puts "Press ENTER to continue..."
gets
load 'PTools.rb'

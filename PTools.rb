require 'colorize'
system "clear" or system "cls"
puts "©PrivateGER".green
puts "\nPTools v1.0".green
puts "1 - Bulk-Hash\n"
puts "2 - Hashcracker\n"
puts "3 - Multi-Hashcracker\n"
puts "4 - View logs of Multihashcracker\n"
puts "5 - Base64 Encryptor/Decryptor for files\n"
puts "6 - Checksum Generator\n"
puts "7 - HTTP DoS\n"
puts "8 - SSH-Key Generator\n"
puts "98 - Update PTools\n"
puts "99 - Exit PTools\n".light_red
print "Enter a number: "
mode = gets.chomp
case mode 
when "1"
    load 'Bulkhash.rb'
when "2"
    load 'Hashcracker.rb'
when "3"
    load 'Multihashcracker.rb'
when "4"
    load 'ShowCrackedHashes.rb'
when "5"
    load 'Base64Encdec.rb'
when "6"
    load 'ChecksumGenerator.rb'
when "7"
    load 'DOS.rb'
when "8"
    load 'SSHKeyGenerator.rb'
when "98"
    load 'update.rb'
when "99"
    exit
else
    load 'PTools.rb'
end

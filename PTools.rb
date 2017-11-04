system "clear" or system "cls"
puts "©PrivateGER"
puts "\nPTools v1.0"
puts "1 - Bulk-Hash\n"
puts "2 - Hashcracker\n"
puts "3 - Multi-Hashcracker\n"
puts "4 - View logs of Multihashcracker\n"
puts "5 - Base64 Encryptor/Decryptor for files\n"
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
else
    load 'PTools.rb'
end

system "clear" or system "cls"
puts "©PrivateGER"
puts "\nPTools v1.0"
puts "1 - Bulk-Hash\n"
puts "2 - Hashcracker\n"
puts "3 - Multi-Hashcracker\n"
print "Enter a number: "
mode = gets.chomp
case mode 
when "1"
    load 'Bulkhash.rb'
when "2"
    load 'Hashcracker.rb'
when "3"
    load 'Multihashcracker.rb'
else
    load 'PTools.rb'
end

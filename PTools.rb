system "clear" or system "cls"
puts "©PrivateGER"
puts "\nPTools v1.0"
puts "1 - Bulk-Hash"
puts "2 - Hashcracker\n"
print "Enter a number: "
mode = gets.chomp
case mode 
when "1"
    load 'Bulkhash.rb'
when "2"
    load 'Hashcracker.rb'
end
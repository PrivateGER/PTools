
logs = File.read("Cracked.txt")
puts logs
puts "\n"
print "Delete logs? Y/N: "
choice = gets.chomp
choice.downcase!
case choice
when "y"
  logfile = File.open("Cracked.txt","w+")
  logfile.puts("")
  logfile.close
  puts "Press ENTER to continue..."
  gets.chomp
  load 'PTools.rb'
when "n"
  puts "Press ENTER to continue..."
  gets.chomp
  load 'PTools.rb'
else
  load 'PTools.rb'
end

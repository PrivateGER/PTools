system "cls" or system "clear"
puts "Website-Cloner"
print "Enter URL/IP: "
target = gets.chomp
system "wget --mirror -p --convert-links -P ./cloned-websites/ #{target}"
puts "Done!"
puts "Press ENTER to continue..."
gets
load 'PTools.rb'

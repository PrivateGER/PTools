system 'clear' or 'cls'
puts "SSH-Key Generator"
print "Lenght, either 1024, 2048 or 4096 (recommended, but all numbers over 1024 are usable) : "
lenght = gets.chomp
load 'SSHKeyGenerator.rb' if lenght == ""
puts "This might take a little while depending on the length of the key."
system "ssh-keygen -t rsa -b #{lenght}"
print "Press ENTER to continue..."
gets
load 'PTools.rb'

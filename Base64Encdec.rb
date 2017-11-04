#Built by PrivateGER
require 'base64'
system "clear" or system "cls"
puts "Encryptor/Decryptor"
puts "1 - Encrypt file\n"
puts "2 - Decrypt file\n"
print "Mode: "
mode = gets.chomp
case mode
when "1"
print "Filename: "
filename = gets.chomp
content = File.read(filename)
print "New filename: "
newname = gets.chomp
encryptedcontent = Base64.encode64(content)
nfh = File.open(newname,"w+")
nfh.puts(encryptedcontent)
nfh.close()
puts "Press ENTER to continue..."
gets
load 'PTools.rb'
when "2"
print "Filename: "
filename = gets.chomp
content = File.read(filename)
print "New filename: "
newname = gets.chomp
decryptedcontent = Base64.decode64(content)
nfh = File.open(newname,"w+")
nfh.puts(decryptedcontent)
nfh.close()
puts "Press ENTER to continue..."
gets
load 'PTools.rb'
else 
puts "Invalid Option!"
puts "Press ENTER to continue..."
gets
load 'PTools.rb'
end

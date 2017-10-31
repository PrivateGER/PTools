require 'digest'

print "Insert string to be hashed in MD5, SHA1, SHA256, SHA384, SHA512 and RIPEMD-160: "
x = gets.chomp
puts "MD5: #{Digest::MD5.hexdigest(x.to_s)}"
puts "SHA1: #{Digest::SHA1.hexdigest(x.to_s)}"
puts "SHA256: #{Digest::SHA256.hexdigest(x.to_s)}"
puts "SHA384: #{Digest::SHA384.hexdigest(x.to_s)}"
puts "SHA512: #{Digest::SHA512.hexdigest(x.to_s)}"
puts "RIPEMD-160: #{Digest::RMD160.hexdigest(x.to_s)}"
puts "\nCoded by PrivateGER"

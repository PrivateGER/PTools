#Built by PrivateGER
#github.com/PerhapsSomeone/PTools
require 'digest'
if ARGV.empty?
hashes = []
puts "Multi-Hashcracker \n"
puts "Currently supported hashes: MD5"
puts "One hashtype at a time."
print "Enter first hash: "
hashes[0] = gets.chomp.downcase
print "Enter second hash: "
hashes[1] = gets.chomp.downcase
print "Hashtype: "
Mode = gets.chomp
else 
hashes = ARGV[1..100000]
puts "Inserting following hashes:"
puts hashes
Mode = ARGV[0]
end

logfile = File.open("Cracked.txt","a+")
counter = 0
        puts "Starting Cracker"
        sleep(1)
        while true do
               case Mode
               when "MD5"
                 tryhash = Digest::MD5.hexdigest(counter.to_s)
               when "SHA1"
                 tryhash = Digest::SHA1.hexdigest(counter.to_s)
               when "SHA256"
                 tryhash = Digest::SHA256.hexdigest(counter.to_s)
               when "SHA384"
                 tryhash = Digest::SHA384.hexdigest(counter.to_s) 
               when "SHA512" 
                 tryhash = Digest::SHA512.hexdigest(counter.to_s)
               when "RIPEMD-160"
                 tryhash = Digest::RMD160.hexdigest(counter.to_s)
               end
              if (hashes[0].to_s == tryhash.to_s)
              puts "Match for #{hashes[0]} found! #{counter}"
              matchfound = true
            end
        if matchfound == true
           hashes.delete_at(0)
           #puts "ArrDel"
           logfile.puts("#{tryhash} #{counter} \n")
           matchfound = false
           counter = 0
        end
        logfile.close if hashes.empty?
        exit if hashes.empty?
        counter += 1 
        #puts "#{hashes[0]} #{counter} " #uncomment to make verbose
        end





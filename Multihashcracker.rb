#Built by PrivateGER
#github.com/PerhapsSomeone/PTools
system "clear" or system "cls"
require 'digest'
require 'colorize'
if ARGV.empty?
hashes = []
puts "Multi-Hashcracker by PrivateGER \n"
puts "Currently supported hashes: MD5, SHA1, SHA256, SHA384, SHA512, RIPEMD-160".green
puts "Caution! Input will NOT be validated!".light_red
print "Hashtype: "
Mode = gets.chomp
puts "Maximum 10 hashes in this mode, arguments are unlimited.".light_red
print "Enter first hash: "
hashes << gets.chomp.downcase
print "Enter second hash (optional): "
hashes << gets.chomp.downcase 
print "Enter third hash (optional): "
hashes << gets.chomp.downcase
print "Enter fourth hash (optional): "
hashes[3] = gets.chomp.downcase
print "Enter fifth hash (optional): "
hashes[4] = gets.chomp.downcase
print "Enter sixth hash (optional): "
hashes[5] = gets.chomp.downcase
print "Enter seventh hash (optional): "
hashes[6] = gets.chomp.downcase
print "Enter eigth hash (optional): "
hashes[7] = gets.chomp.downcase
print "Enter nineth hash (optional): "
hashes[8] = gets.chomp.downcase
print "Enter tenth hash (optional): "
hashes[9] = gets.chomp.downcase
hashes.reject!(&:empty?)
puts "#{hashes}".green
puts "No hashes entered, exiting...".light_red if hashes.empty?
puts "Press ENTER to continue....".green if hashes.empty?
gets.chomp if hashes.empty?
load 'PTools.rb' if hashes.empty?
else 
hashes = ARGV[1..100000]
puts "Inserting following hashes:"
puts hashes
Mode = ARGV[0]
end

logfile = File.open("Cracked.txt","a+")
counter = 0
        puts "Starting Cracker..."
        sleep(1)
        puts "[*] Working...".light_red
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
                else
                  puts "Invalid mode!"
                  puts "Press ENTER to continue..."
                  gets.chomp
                  load 'PTools.rb'
                end
              if (hashes[0].to_s == tryhash.to_s)
              puts "Match for #{hashes[0]} found! #{counter}".green
              matchfound = true
            end
        if matchfound == true
            hashes.delete_at(0)
            logfile.puts("#{tryhash} #{counter} \n")
            matchfound = false
            counter = 0
        end
        logfile.close if hashes.empty?
        break if hashes.empty?
        counter += 1 
        #puts "#{hashes[0]} #{counter} " #uncomment to make verbose
        end
puts "Press ENTER to continue...".green if ARGV.empty?
gets.chomp if ARGV.empty?
load 'PTools.rb' if ARGV.empty?

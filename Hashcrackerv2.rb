system "cls" or "clear"
require 'colorize'
require 'digest'

def error(err) #function for exiting program with error code
    puts err.light_red #shows specified err argument
    puts "Press ENTER to continue...".light_red
    gets #waits for enter key
    load 'PTools.rb' #load main suite
end

def hash(algo, input) #returns the hash of the specified input wit the specified algo
case algo.downcase #downcases algo argument so its case-insensitive
when "md5"
    return Digest::MD5.hexdigest(input.to_s) #returns md5 hash of universal argument
when "sha1"
    return Digest::SHA1.hexdigest(input.to_s) #returns sha1 hash of universal argument
when "sha256"
    return Digest::SHA256.hexdigest(input.to_s) #returns sha256 hash of universal argument
when "sha384"
    return Digest::SHA384.hexdigest(input.to_s) #returns sha384 hash of universal argument
when "sha512"
    return Digest::SHA512.hexdigest(input.to_s) #returns sha512 hash of universal argument
when "ripemd-160"
    return Digest::RMD160.hexdigest(input.to_s) #returns ripemd-160 hash of universal argument
end
end

def verify(algo, input) #Verifys hashes by their length and returns true if they are correct
case algo.downcase #downcases algo argument since hex hashes are case-insensitive anyways
when "md5"
    if input.downcase.to_s.length == 32 #checks argument length and returns true or false
        return true
    else 
        return false
    end
when "sha1"
    if input.downcase.to_s.length == 40 #checks argument length and returns true or false
        return true
    else 
        return false
    end
when "sha256"
    if input.downcase.to_s.length == 64 #checks argument length and returns true or false
        return true
    else 
        return false
    end
when "sha512"
    if input.downcase.to_s.length == 128 #checks argument length and returns true or false
        return true
    else 
        return false
    end
when "sha384"
    if input.downcase.to_s.length == 96 #checks argument length and returns true or false
        return true
    else 
        return false
    end
when "ripemd-160"
    if input.downcase.to_s.length == 40 #checks argument length and returns true or false
        return true
    else 
        return false
    end
end
end
if ARGV.empty? #only displays UI if no arguments have been given
    puts "Multi-purpose numeric Hashcracker v2"
    puts "Built with Ruby v.2.2.2"
    puts "Currently supported hashes: MD5, SHA1, SHA256, SHA384, SHA512, RIPEMD-160"
    print "Mode: "
    mode = gets.chomp.downcase
    print "Enter Hash: "
    hashinput = gets.chomp.downcase
    error("Invalid Input!") unless verify(mode,hashinput); #passes input and algo to verify(algo, input) and throws an error if return is false
    puts "Starting " + mode.upcase + " Cracker..." #upcases mode to show "Starting MODE cracker..."
    sleep(1) #waits for 1 second to leave user time to read
else #if arguments are given all UI elements are skipped
    mode = ARGV[0].downcase
    hashinput = ARGV[1].downcase
    error("Invalid Input!") unless verify(mode,hashinput); #input gets verfied directly and gets cracked on true
end
i = 0
start = Time.now #gets current time in seconds
if mode == "sha512" #only shows simple Working... message because SHA512 hashes are longer than one line
    puts "[*] Working..."
end
while true 
currenthash = hash(mode,i) #calls the hash(algo, input) method and assigns the returned hash to currenthash variable
if currenthash.to_s == hashinput.to_s
    finish = Time.now #gets current time
    puts "\nMatch found! #{hashinput} equals #{i}.".green
    puts "Time taken: #{-(start - finish)} secs".green  #subtracts start time from finish time and turns it into a positive integer
    break
end
unless mode.downcase == "sha512" #will not display if hashtype is SHA512
    $stdout.write "\r[*] #{currenthash} #{i}" #one-line indicator of working status 
    $stdout.flush #flushes output
end    
i += 1
end

puts "Press ENTER to continue....".green
gets #waits for enter key
load 'PTools.rb' #load main suite

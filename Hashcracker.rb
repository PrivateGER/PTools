#Multi-Puropse Hashcracker
#Built by PrivateGER
#Licensed with MIT

require 'digest'
system "clear" or system "cls"
puts "Multi-purpose numeric Hashcracker v1.0"
puts "Built with Ruby v.2.2.2"
puts "Currently supported hashes: MD5, SHA1, SHA256, SHA384, SHA512, RIPEMD-160"
unless ARGV.empty?
    mode = ARGV[0].to_s
    target = ARGV[1].to_s
    salt = ARGV[2].to_s
else  
    print "Hashtype: "
    mode = gets.chomp
    print "Insert Hash: "
    target = gets.chomp
    target.downcase!
    print "Insert Salt (optional): "
    salt = gets.chomp
end
case mode
when "MD5"
    if target.length == 32
        puts "Valid MD5 Hash"
    else
        puts "Invalid hash/Incorrect length!"
        sleep(2)
        puts "\nPress ENTER to return..."
        gets
        load "PTools.rb"
    end
    puts salt
    
    puts "#{target} inserted, starting MD5 cracker..."
    puts "Stop with CTRL+C."
    sleep(2)
    i = 0
    start = Time.now
    while true
        md5hash = Digest::MD5.hexdigest(i.to_s + salt)
        puts "#{md5hash} #{i}"
        if (md5hash.to_s == target.to_s)
            finish = Time.now
            print "Match found! #{md5hash} equals #{i}. "
            if salt != ""
              puts "Salt is #{salt}. "
	          end
            puts "Time taken: #{-(start - finish)} secs"
            sleep(2)
            break
        end
        i += 1
    end

when "SHA1"

    if target.length == 40
        puts "Valid SHA1 Hash"
    else
        puts "Invalid hash/Incorrect length!"
        sleep(2)
        puts "\nPress ENTER to return..."
        gets
        load "PTools.rb"
    end
    puts "#{target} inserted, starting SHA1 cracker..."
    puts "Stop with CTRL+C."
    sleep(2)
    i = 0
    start = Time.now
    while true
        sha1hash = Digest::SHA1.hexdigest(i.to_s + salt)
        puts "#{sha1hash} #{i}"
        if (sha1hash.to_s == target.to_s)
            finish = Time.now
            puts "Match found! #{sha1hash} equals #{i}." 
	    if salt != ""
               puts "Salt is #{salt}. "
	    end
            puts "Time taken: #{-(start - finish)} secs"
            break
        end
        i += 1
    end

when "SHA256"

    if target.length == 64
        puts "Valid SHA256 Hash"
    else
        puts "Invalid hash/Incorrect length!"
        sleep(2)
        puts "\nPress ENTER to return..."
        gets
        load "PTools.rb"
    end
    puts "#{target} inserted, starting SHA256 cracker..."
    puts "Stop with CTRL+C."
    sleep(2)
    i = 0
    start = Time.now
    while true
        sha256hash = Digest::SHA256.hexdigest(i.to_s + salt)
        puts "#{sha256hash} #{i}"
        if (sha256hash.to_s == target.to_s)
            finish = Time.now
            puts "Match found! #{sha256hash} equals #{i}."         	                           
            if salt != ""
               puts "Salt is #{salt}. "
	    end
            puts "Time taken: #{-(start - finish)} secs"
            break
        end
        i += 1
    end

when "SHA512"

    if target.length == 128
        puts "Valid SHA512 Hash"
    else
        puts "Invalid hash/Incorrect length!"
        sleep(2)
        puts "\nPress ENTER to return..."
        gets
        load "PTools.rb"
    end
    puts "#{target} inserted, starting SHA512 cracker..."
    puts "Stop with CTRL+C."
    sleep(2)
    i = 0
    start = Time.now
    while true
        sha512hash = Digest::SHA512.hexdigest(i.to_s + salt)
        puts "#{sha512hash} #{i}"
        if (sha512hash.to_s == target.to_s)
            finish = Time.now
            puts "Match found! #{sha512hash} equals #{i}."
            if salt != ""
              puts "Salt is #{salt}."
	          end
	          puts "Time taken: #{-(start - finish)} secs"
            break
        end
        i += 1
    end

when "SHA384"

    if target.length == 96
        puts "Valid SHA384 Hash"
    else
        puts "Invalid hash/Incorrect length!"
        sleep(2)
        puts "\nPress ENTER to return..."
        gets
        load "PTools.rb"
    end
    puts "#{target} inserted, starting SHA384 cracker..."
    puts "Stop with CTRL+C."
    sleep(2)
    i = 0
    start = Time.now
    while true
        sha384hash = Digest::SHA384.hexdigest(i.to_s + salt)
        puts "#{sha384hash} #{i}"
        if (sha384hash.to_s == target.to_s)
            finish = Time.now
            puts "Match found! #{sha384hash} equals #{i}."
            until salt == ""
              puts salt
	          end
            puts "Time taken: #{-(start - finish)} secs"            
            break
        end
        i += 1
    end

when "RIPEMD-160"

    if target.length == 40
        puts "Valid RIPEMD-160 Hash"
    else
        puts "Invalid hash/Incorrect length!"
        sleep(2)
        puts "\nPress ENTER to return..."
        gets
        load "PTools.rb"
    end
    puts "#{target} inserted, starting RIPEMD-160 cracker..."
    puts "Stop with CTRL+C."
    sleep(2)
    i = 0
    start = Time.now
    while true
        rmd160hash = Digest::RMD160.hexdigest(i.to_s + salt) 
        puts "#{rmd160hash} #{i}"
        if (rmd160hash.to_s == target.to_s)
            finish = Time.now
            puts "Match found! #{rmd160hash} equals #{i}."
            if salt != ""
              puts "Salt is #{salt}."
	    end
            puts "Time taken: #{-(start - finish)} secs"
            break
        end
        sleep(1)
        i += 1
    end
end
if ARGV.empty?
    print "Press ENTER to return..."
    gets
    #load 'PTools.rb'
else 
    exit
end

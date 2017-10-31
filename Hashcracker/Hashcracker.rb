#Multi-Puropse Hashcracker
#Built by PrivateGER
#Licensed with MIT

require 'digest'

puts "Multi-purpose numeric Hashcracker v1.0"
puts "Built with Ruby v.2.2.2"
puts "Currently supported hashes: MD5, SHA1, SHA256, SHA384, SHA512, RIPEMD-160"
print "Hashtype: "
mode = gets.chomp
case mode
when "MD5"
    print "Insert Hash: "
    target = gets.chomp
    target.downcase!
    
    if target.length == 32
        puts "Valid MD5 Hash"
    else
        puts "Invalid hash/Incorrect length!"
        sleep(2)
        exit
    end
    
    puts "#{target} inserted, starting MD5 cracker..."
    puts "Stop with CTRL+C."
    sleep(1.5)
    i = 0
    start = Time.now
    while true
        md5hash = Digest::MD5.hexdigest(i.to_s)
        puts "#{md5hash} #{i}"
        if (md5hash.to_s == target.to_s)
            finish = Time.now
            puts "Match found! #{md5hash} equals #{i}. Time taken: #{-(start - finish)} secs"
            sleep(2)
            break
        end
        i += 1
    end

when "SHA1"
    print "Insert Hash: "
    target = gets.chomp
    target.downcase!
    if target.length == 40
        puts "Valid SHA1 Hash"
    else
        puts "Invalid hash/Incorrect length!"
        sleep(2)
        exit
    end
    puts "#{target} inserted, starting SHA1 cracker..."
    puts "Stop with CTRL+C."
    sleep(1.5)
    i = 0
    start = Time.now
    while true
        sha1hash = Digest::SHA1.hexdigest(i.to_s)
        puts "#{sha1hash} #{i}"
        if (sha1hash.to_s == target.to_s)
            finish = Time.now
            puts "Match found! #{sha1hash} equals #{i}. Time taken: #{-(start - finish)} secs"
            break
        end
        i += 1
    end

when "SHA256"
    print "Insert Hash: "
    target = gets.chomp
    target.downcase!
    if target.length == 64
        puts "Valid SHA256 Hash"
    else
        puts "Invalid hash/Incorrect length!"
        sleep(2)
        exit
    end
    puts "#{target} inserted, starting SHA256 cracker..."
    puts "Stop with CTRL+C."
    sleep(1.5)
    i = 0
    start = Time.now
    while true
        sha256hash = Digest::SHA256.hexdigest(i.to_s)
        puts "#{sha256hash} #{i}"
        if (sha256hash.to_s == target.to_s)
            finish = Time.now
            puts "Match found! #{sha256hash} equals #{i}. Time taken: #{-(start - finish)} secs"
            break
        end
        i += 1
    end

when "SHA512"
    print "Insert Hash: "
    target = gets.chomp
    target.downcase!
    if target.length == 128
        puts "Valid SHA512 Hash"
    else
        puts "Invalid hash/Incorrect length!"
        sleep(2)
        exit
    end
    puts "#{target} inserted, starting SHA512 cracker..."
    puts "Stop with CTRL+C."
    sleep(1.5)
    i = 0
    start = Time.now
    while true
        sha512hash = Digest::SHA512.hexdigest(i.to_s)
        puts "#{sha512hash} #{i}"
        if (sha512hash.to_s == target.to_s)
            finish = Time.now
            puts "Match found! #{sha512hash} equals #{i}. Time taken: #{-(start - finish)} secs"
            break
        end
        i += 1
    end

when "SHA384"
    print "Insert Hash: "
    target = gets.chomp
    target.downcase!
    if target.length == 96
        puts "Valid SHA384 Hash"
    else
        puts "Invalid hash/Incorrect length!"
        sleep(2)
        exit
    end
    puts "#{target} inserted, starting SHA384 cracker..."
    puts "Stop with CTRL+C."
    sleep(1.5)
    i = 0
    start = Time.now
    while true
        sha384hash = Digest::SHA384.hexdigest(i.to_s)
        puts "#{sha384hash} #{i}"
        if (sha384hash.to_s == target.to_s)
            finish = Time.now
            puts "Match found! #{sha384hash} equals #{i}. Time taken: #{-(start - finish)} secs"
            break
        end
        i += 1
    end

when "RIPEMD-160"
    print "Insert Hash: "
    target = gets.chomp
    target.downcase!
    if target.length == 40
        puts "Valid RIPEMD-160 Hash"
    else
        puts "Invalid hash/Incorrect length!"
        sleep(2)
        exit
    end
    puts "#{target} inserted, starting RIPEMD-160 cracker..."
    puts "Stop with CTRL+C."
    sleep(1.5)
    i = 0
    start = Time.now
    while true
        rmd160hash = Digest::RMD160.hexdigest(i.to_s)
        puts "#{rmd160hash} #{i}"
        if (rmd160hash.to_s == target.to_s)
            finish = Time.now
            puts "Match found! #{rmd160hash} equals #{i}. Time taken: #{-(start - finish)} secs"
            break
        end
        i += 1
    end
end
print "Press ENTER to continue..."
gets

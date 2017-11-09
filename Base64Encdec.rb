#Built by PrivateGER
require 'base64'
require 'colorize'
system "clear" or system "cls"
puts "Encryptor/Decryptor for all file types".green
puts "1 - Encrypt file\n"
puts "2 - Decrypt file\n"
puts "3 - En/Decrypt string"
print "Mode: "

#Setting up error handler because usage might be now
def error(err)
    puts err.light_red
    puts "Press ENTER to continue...".light_red
    gets
    load 'PTools.rb'
end

mode = gets.chomp
case mode
when "1"
    print "Filename: "
    filename = gets.chomp
    error("Empty input!") if filename.empty? #check if input is "" or nil
    error("File doesn't exist!") unless File.exist?(filename) #check if file exists
    content = File.read(filename)
    print "New filename: "
    newname = gets.chomp
    encryptedcontent = Base64.encode64(content) #encode file content
    nfh = File.open(newname,"w+") #create or erase file and open for writing
    nfh.puts(encryptedcontent) #put into file
    nfh.close() #close file
    puts "Press ENTER to continue...".green
    gets
    load 'PTools.rb'
when "2"
    print "Filename: "
    filename = gets.chomp
    error("Empty input!") if filename.empty? #multiple input validations
    error("File doesn't exist!") unless File.exist?(filename)
    content = File.read(filename)
    print "New filename: "
    newname = gets.chomp
    error("Empty input!") if newname.empty?
    decryptedcontent = Base64.decode64(content) #decode file content
    nfh = File.open(newname,"w+") #erase or create file and open for writing
    nfh.puts(decryptedcontent) #write file
    nfh.close() #close file
    puts "Press ENTER to continue...".green
    gets
    load 'PTools.rb'
when "3" #opens secondary submenu
    puts "1 - Encrypt string" 
    puts "2 - Decrypt string" 
    print "Mode: " 
    mode = gets.chomp 
    error ("Empty Input!") if mode.empty?
    if mode == "1" #evalutes secondary menu input
        print "Enter string: " 
        string = gets.chomp 
	error("Empty input!") if string.empty?
	decoded = Base64.encode64(string)
	puts "\n"
        print "Result: " + decoded
        puts "Press ENTER to continue...".green
        gets
        load 'PTools.rb'
	end
    if mode == "2"
        print "Enter string: " 
        string = gets.chomp 
        error("Empty input!") if string.empty?
        puts "\nResult: #{Base64.decode64(string)}"
        puts "Press ENTER to continue...".green
        gets
        load 'PTools.rb'
    end
    error("Invalid Option!")
else 
    error("Invalid Option!")
end

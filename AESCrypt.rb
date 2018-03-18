def errorExit(error) 
	puts error
end

def normalExit() 
	puts "Finished!"
	puts "Press ENTER to continue..."
	gets
	load "PTools.rb"
end

begin
	require "aes"

rescue Exception => e
	puts "Please run the install_dependencies.rb script to install missing gems!"
	puts "Press ENTER to continue..."
	gets
	load "PTools.rb"
end


def fileDecrypt(file, key)
	begin
	    handler = File.open(file, 'rb') #open file to decrypt...
    	data = handler.read #read all data in binary mode
    	handler.close #close old file
    	originalFileName = file.sub(".pcrypt", '') #create filename with the .pcrypt extension removed
    	File.delete(file) #delete old file
    	writefile = File.open(originalFileName, "wb") #recreate original file
    	decryptedContent = AES.decrypt(data, key) #decrypt content
    	writefile.puts decryptedContent #write to original file
    	writefile.close #close new file
	rescue Exception => e
		errorExit(e)	
	end
end

def fileEncrypt(file, key)
	begin
		#read data into variable
    	handler = File.open(file, 'rb')
    	data = handler.read #read data in binary mode
    	handler.close #close file
    	File.delete(file) #delete the old file
    	writefile = File.open(file + ".pcrypt", "w") #create a new file with .pcrypt attached
    	encryptedContent = AES.encrypt(data, key) #encrypt the content...
    	writefile.puts encryptedContent #and write it
    	writefile.close #close the new file
	rescue Exception => e
		errorExit(e)
	end
end

def encrypt()
	system "cls" or system "clear"
	puts "AESCrypt - Encrypt"
	print "Enter filename: "
	file = gets.chomp
	key = AES.key
	puts "Encrypting file..."
	fileEncrypt(file, key)
	puts "Sucessfully encrypted!"
	puts "Your decryption key: #{key}"    
	normalExit()
end

def decrypt()
	system "cls" or system "clear"
	puts "AESCrypt - Decrypt"
	print "Enter filename: "
	file = gets.chomp
	print "Enter decryption key: "
	key = gets.chomp
	puts "Decrypting file..."
	fileDecrypt(file, key)
	puts "Sucessfully decrypted!"
	normalExit()
end

system "cls" or system "clear"

puts "AESCrypt - PTools"
puts "1) Encrypt a file"
puts "2) Decrypt a file"
print "Enter a number: "

begin
	mode = gets.chomp.to_i    
rescue Exception => e
	errorExit("Invalid number/character entered!") 
end

encrypt() if mode == 1
decrypt() if mode == 2

errorExit("Invalid number entered!")
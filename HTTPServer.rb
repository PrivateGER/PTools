require 'colorize'
system "cls" or system "clear"
puts "HTTP Server-Manager".green
puts "1 - View server status"
puts "2 - Install/Update server"
puts "3 - Start Server"
puts "4 - Stop Server"
print "Action: "
mode = gets.chomp
def endprg()
    puts "Press ENTER to continue..."
    gets
    load 'PTools.rb'   
end
case mode
when "1"
    system "sudo service apache2 status" or system "sudo systemctl status apache2"
    endprg()
when "2"
    puts "Installing/Updating Server...".green
    system "sudo apt-get install apache2"
    puts "Done! Use Option 3 and 4 to start/stop the server.".green
    endprg()
when "3"
    puts "Starting Server...".green
    system "sudo service apache2 start"
    puts "Done!"
    endprg()
when "4"
    puts "Stopping Server..."
    system "sudo service apache2 stop"
    puts "Done!"
    endprg()
else
    puts "Invalid Input!".light_red
    endprg()
end 

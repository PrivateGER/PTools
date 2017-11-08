system "clear" or system "cls"
puts "[*] Updating...."
if (system('git pull') == true)
  puts "Update successful!"
else
  puts "Update failed! Please check your internet connection and make sure Git is installed."
end
puts "Press ENTER to continue..."
gets
load 'PTools.rb'

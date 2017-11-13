require 'colorize'
system "cls" or system "clear"
puts "Website-Cloner"
print "Enter URL/IP: "
def error(str)
    puts str.light_red
    puts "Press ENTER to continue...".light_red
    gets
    load 'PTools.rb'
end
target = gets.chomp
error("Empty input!").light_red if target.empty?
system "wget --mirror -p --convert-links -P ./cloned-websites/ #{target}"
puts "Done!"
puts "Press ENTER to continue..."
gets
load 'PTools.rb'

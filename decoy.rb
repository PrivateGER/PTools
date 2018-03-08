class HelloWorld
   def initialize(name)
      @name = name.capitalize
   end
   def speak
      puts "Hello #{@name}210!"
   end
end

hello = HelloWorld.new("World")
hello.speak

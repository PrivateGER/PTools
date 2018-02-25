class HelloWorld
   def initialize(name)
      @name = name.capitalize
   end
   def speak
      puts "Hello #{@name}115!"
   end
end

hello = HelloWorld.new("World")
hello.speak

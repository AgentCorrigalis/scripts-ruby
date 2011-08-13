#!/usr/bin/env ruby
class Greeter
    attr_accessor :name
    def initialize(name = "world")
        @name = name
    end
    def say_hi
        puts "Hi #{@name}!"
    end
    def say_bye
        puts "Bye #{@name}, come back soon."
    end
end

g = Greeter.new("Alex")
g.say_hi
g.say_bye
g.name="Bob"
g.say_hi
g.say_bye

puts g.respond_to?("name")
puts g.respond_to?("initialize")
puts g.respond_to?("say_hi")
puts g.respond_to?("say_bye")

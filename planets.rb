#!/usr/bin/env ruby

class Planet
    #include Enumerable
    include Comparable
    attr_accessor :name,:position
    def initialize(name,position)
        @name = name
        @position = position
    end
    def <=>(other)
        @position <=> other.position
    end
end

class SolarSystem
    attr_accessor :allPlanets
    def initialize
        buildSolarSystem
    end
    def buildSolarSystem
        @allPlanets = []
        i = 1
        ['Mercury','Venus','Earth','Mars','Jupiter','Saturn','Uranus','Neptune'].each do |planetName|
            @allPlanets.push(Planet.new(planetName, i))
            i=i+1
        end
    end
end
ss = SolarSystem.new
ss.allPlanets.each { |planet| puts "#{planet.name} -- #{planet.position}" }
puts "------"
ss.allPlanets.reverse.each { |planet| puts "#{planet.name} -- #{planet.position}" }
puts "------"
puts ss.allPlanets.max.name
puts "------"
a = Planet.new("firstPlanet",1)
b = Planet.new("secondPlanet",2)
puts a < b
puts a > b

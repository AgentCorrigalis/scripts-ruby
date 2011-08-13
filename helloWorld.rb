#!/usr/bin/ruby


#method with no parameter pasrsed
def helloWorld
    puts "hello world"
end

#method with parameter pasrsed
def helloPerson(name)
    puts "hello #{name.capitalize}!"
end

def hello(name = "world")
    puts "hello #{name.capitalize}!"
end

helloWorld
helloPerson("alex")
hello

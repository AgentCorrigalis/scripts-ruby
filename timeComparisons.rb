#!/usr/bin/env ruby

t = Time.now
puts "Time now: #{t}"
puts "Date of now: #{t.day}"
puts "Month of now: #{t.month}"
puts "hour, minute, second of now: #{t.hour}, #{t.min}, #{t.sec}"

puts "it is pm" if t.hour.between?(12,23)
puts "it is am" if t.hour.between?(0,11)

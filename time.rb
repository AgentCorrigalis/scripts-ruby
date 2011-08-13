#!/usr/bin/env ruby


timeInPast = Time.utc(1983,01,26,0,0,0)
timeNow = Time.new
timeInFuture = Time.utc(timeNow.year + 5,01,26,0,0,0)

puts timeInPast
puts timeNow.utc
puts timeInFuture

puts timeNow.strftime("%Y%m%d")
puts timeNow.strftime("This is date-time string %Y%m%d%H%M%S")

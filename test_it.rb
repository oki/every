#!/usr/local/bin/ruby

require 'every'

loop do
   every 5.seconds do
      puts "Executed: #{Time.now}"
   end
   
   sleep 1
   
end

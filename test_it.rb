#!/usr/local/bin/ruby

require 'every'

loop do
    every 5.seconds, :title => "Oko" do
        puts "Odpalony: #{Time.now}"
    end

    sleep 1
end

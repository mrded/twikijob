#!/usr/bin/env ruby

require 'rubygems'
require 'chatterbot/dsl'

# remove this to send out tweets
debug_mode

# remove this to update the db
no_update

# remove this to get less output when running
verbose

search "wikijob" do |tweet|
  puts tweet.inspect
  # reply "Hey #USER# nice to meet you!", tweet
end
 
replies do |tweet|
  puts tweet.inspect
  # reply "Yes #USER#, you are very kind to say that!", tweet
end 

#!/usr/bin/env ruby

require 'rubygems'
require 'chatterbot/dsl'

# remove this to send out tweets
debug_mode

# remove this to update the db
no_update

# remove this to get less output when running
verbose

from_date = Time.parse('2015-02-01')

puts "-> Twitter user mentions wikijob in tweet = WikiJob favourites that tweet"
search "wikijob" do |tweet|
  favorite(tweet) if tweet.created_at > from_date
end

puts "-> Twitter user uses @wikijob in tweet = WikiJob favourites that tweet and follows that user" 
replies do |tweet|
  if tweet.created_at > from_date
    favorite tweet
    follow tweet.user
  end
end 


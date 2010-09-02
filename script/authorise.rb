#!/usr/bin/ruby

require 'pp'
require 'rubygems'
require 'twitter'

oauth   = Twitter::OAuth.new('OcQJ2juIwYttlv1XNRw', '7tMa4l32Sw5yXR4Zus8CwNWfggVoKBaCAAI0L8yEK5M')
rtoken  = oauth.request_token.token
rsecret = oauth.request_token.secret

puts "> redirecting you to twitter to authorize..."
puts oauth.request_token.authorize_url
%x(open #{oauth.request_token.authorize_url})

print "> what was the PIN twitter provided you with? "
pin = gets.chomp

begin
  pp oauth.authorize_from_request(rtoken, rsecret, pin)

  twitter = Twitter::Base.new(oauth)
  twitter.user_timeline.each do |tweet|
    puts "#{tweet.user.screen_name}: #{tweet.text}"
    break
  end
rescue OAuth::Unauthorized
  puts "> FAIL!"
end

require 'pp'
class TwitterMessages
  
  def self.poll(c)
    oauth = Twitter::OAuth.new(c[:oauth][:consumer][:key], c[:oauth][:consumer][:secret])
    begin
      oauth.authorize_from_access(c[:oauth][:access][:token], c[:oauth][:access][:secret])
      twitter = Twitter::Base.new(oauth)
      twitter.direct_messages.each do |tweet|
        if c[:users].find{ |u| u[:twitter_username] == tweet.sender.screen_name }
          cstart = Time.zone.parse(c[:schedule][:start]).in_time_zone(c[:general][:tz])
          cend = Time.zone.parse(c[:schedule][:end]).in_time_zone(c[:general][:tz])
          created_at = Time.zone.parse(tweet.created_at)
          if  created_at.in_time_zone(c[:general][:tz]) >= cstart and
              created_at.in_time_zone(c[:general][:tz]) <= cend
            Tweet.new(:tid => tweet.id,
                      :sender => tweet.sender.screen_name,
                      :created_at => tweet.created_at,
                      :body => tweet.text
                      ).save unless Tweet.find_by_tid(tweet.id)
          end
        end
      end
    rescue OAuth::Unauthorized
      puts "> FAIL!"
    end
  end

end
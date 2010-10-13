# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def speaker_at tweet
    return nil if tweet.nil?
    created_at = tweet.created_at
    AppConfig[:schedule][:slots].each do |s|

      start_time = DateTime.parse(s[:start])
      end_time = DateTime.parse(s[:end])

      if created_at >= start_time and created_at <= end_time
        if s[:speaker]
          return s[:speaker]
        else
          return s[:title]
        end
      end
    end
    return nil
  end
  
  def slot_duration slot
    ((DateTime.parse(slot[:end]) - DateTime.parse(slot[:start]))/60).ceil.to_s
  end

end

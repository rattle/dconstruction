class DataController < ApplicationController

  caches_page :js

  def js
    @start_time = DateTime.parse(AppConfig[:schedule][:start]).in_time_zone(AppConfig[:general][:tz])
    @end_time = DateTime.parse(AppConfig[:schedule][:end]).in_time_zone(AppConfig[:general][:tz])
    render :template => 'data/js', :layout => false, :content_type => 'text/javascript'
  end

end
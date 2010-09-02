class PagesController < ApplicationController

  caches_page :index

  def index
    @start_time = DateTime.parse(AppConfig[:schedule][:start]).in_time_zone(AppConfig[:general][:tz])
    @end_time = DateTime.parse(AppConfig[:schedule][:end]).in_time_zone(AppConfig[:general][:tz])
  end

  def about
    
  end

end

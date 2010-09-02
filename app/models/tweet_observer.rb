class TweetObserver < ActiveRecord::Observer

  def after_save( tweet )
    expire_page :controller => "pages", :action => "index"
    expire_page :controller => "data", :action => "js"
  end
  alias_method( :after_create, :after_save )
  alias_method( :after_update, :after_save )
  alias_method( :before_destroy, :after_save )
  
end

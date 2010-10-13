class TweetObserver < ActiveRecord::Observer

  def after_save( tweet )
    ActionController::Base.expire_page '/index'
    ActionController::Base.expire_page '/data'
  end
  alias_method( :after_create, :after_save )
  alias_method( :after_update, :after_save )
  alias_method( :before_destroy, :after_save )
  
end

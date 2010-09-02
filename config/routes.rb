ActionController::Routing::Routes.draw do |map|
  map.root :controller => "pages"
  map.data '/data', :controller => "data", :action => "js"
end

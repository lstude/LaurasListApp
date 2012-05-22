LaurasListApp::Application.routes.draw do
  
  get "home", :controller => "listings", :action => "index"
  
  get "home/new", :controller => "listings", :action => "new"
  post "home", :controller => "listings", :action => "create"
  
  get "home/:id", :controller => "listings", :action => "show"
  delete "home/:id", :controller => "listings", :action => "destroy"
  
  get "home/:id/edit", :controller => "listings", :action => "edit"
  put "home/:id", :controller => "listings", :action => "update"
  
end

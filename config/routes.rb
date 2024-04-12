Rails.application.routes.draw do
  get("/", { :controller => "zebra", :action => "rules"})
  get("/:move", { :controller => "zebra", :action => "giraffe"})
  # get("/rock", { :controller => "zebra", :action => "giraffe"})
  # get("/paper", { :controller => "zebra", :action => "elephant"})
  # get("/scissors", { :controller => "zebra", :action => "rhino"})
end

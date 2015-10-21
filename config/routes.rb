Rails.application.routes.draw do
root'outcomes#play_rock'
get("/rock", { :controller => "outcomes", :action => "play_rock"})
get("/paper", { :controller => "outcomes", :action => "play_paper"})
get("/scissors", { :controller => "outcomes", :action => "play_scissors"})

end

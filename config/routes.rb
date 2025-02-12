Rails.application.routes.draw do

get("/dice/:number_of_die/:size_of_die",{:controller => "dice", :action => "flexible"})

get("/",{:controller => "dice", :action => "home"})
end

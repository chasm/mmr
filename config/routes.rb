Mmr::Application.routes.draw do
  
  get "login" => "session#new"
  post "login" => "session#create"
  
  delete "logout" => "session#destroy"
  get "logout" => "session#destroy"
  
  root 'site#index'
end

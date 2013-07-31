Project2::Application.routes.draw do

  get "privacy" => "site#privacy"
  get "terms" => "site#terms"
  
  get "login" => "session#new"
  post "login" => "session#create"
  delete "logout" => "session#destroy"
  get "logout" => "session#destroy"
  
  root 'site#index'
end

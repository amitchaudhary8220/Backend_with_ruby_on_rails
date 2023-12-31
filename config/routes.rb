Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"


  #GET /about

  get "about-us" , to: "about#index", as: :about   #about_controller and index action

  #root route    #/ is optional in rails
  get "/" , to:"main#index"  , as: :root     #we can also write for root like this root to: "main#index"
end  

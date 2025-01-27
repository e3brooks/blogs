Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route, maps to ArticlesController
  root "articles#index"

  # Map all conventional routes for articles (index, show, new, create, edit, update, destroy)
  resources :articles do
    # create nested comments resource, shows hierarchical relationship
    resources :comments
  end

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

end

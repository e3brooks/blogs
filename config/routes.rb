Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route, maps to ArticlesController
  root "articles#index"

  # GET /articles requests map to index action of ArticalsController
  get "/articles", to: "articles#index"

  # title and body of single article
  get "/articles/:id", to: "articles#show"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

end

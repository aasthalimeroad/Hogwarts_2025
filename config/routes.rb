Rails.application.routes.draw do
resources "house" , only: %i[index show]
  # root to: "houses#index"
  # get "houses", to: "houses#index"
  # get "houses/:id", to: "houses#show", id: /\d+/, as: "house"
  # Defines the root path route ("/")
  # root "posts#index"
end

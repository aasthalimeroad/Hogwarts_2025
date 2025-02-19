Rails.application.routes.draw do
  # get 'teachers/index'
  # get 'teachers/show'
  # get 'students/index'
  # get 'students/show'
resources "houses" , only: %i[index show]
  root to: "houses#index"
  # get "houses", to: "houses#index"
  # get "houses/:id", to: "houses#show", id: /\d+/, as: "house"
  # Defines the root path route ("/")
  # root "posts#index"

  resources "students", only: %i[index show]
  resources "teachers", only: %i[index show]
end

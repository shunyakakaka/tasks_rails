Rails.application.routes.draw do
  get "tasks", to: "tasks#index"
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"
  get "tasks/show", to: "tasks#show"
end

Rails.application.routes.draw do
  get "tasks", to: "tasks#index"
  get "tasks/create", to: "tasks#create"
end

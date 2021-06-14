Rails.application.routes.draw do
  resources :tasks, only: [:index, :new, :edit, :show, :create, :destroy]
end

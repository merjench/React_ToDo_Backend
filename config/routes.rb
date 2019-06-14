Rails.application.routes.draw do
  resources :tasks
  resources :todo_lists, only: [:index, :create, :show, :destroy]
  resources :users, only: [:index, :create, :show, :update, :destroy]


  # what kind of HTTP request 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

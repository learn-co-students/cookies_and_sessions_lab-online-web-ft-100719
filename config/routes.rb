Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'products#index'
  get '/products/index', to: 'products#index'
  post 'add_item', to: 'products#add'
end

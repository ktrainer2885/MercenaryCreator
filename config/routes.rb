Rails.application.routes.draw do
  get '/', to: "home#index"
  get 'home/index'


  devise_for :users
  get "/admin/index", to: "admin#index"
  get "/dashboard/", to: "dashboard#index"
  get '/dashboard/index', to: "dashboard#index"
  get '/dashboard/edit', to: "dashboard#edit"
  post '/dashboard/update', to: "dashboard#update"
  get  '/dashboard/create', to: "dashboard#create"
  post '/dashboard/create_unit', to: "dashboard#create_unit"
  get '/dashboard/delete', to: "dashboard#delete"
  post '/dashboard/delete_unit', to: "dashboard#delete_unit"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

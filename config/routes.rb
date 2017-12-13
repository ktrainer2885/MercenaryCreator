Rails.application.routes.draw do
  get '/', to: "home#index"
  get 'home/index'


  devise_for :users
  get "/admin/index", to: "admin#index"
  get "/dashboard/", to: "dashboard#index"
  get '/dashboard/index', to: "dashboard#index"
  get '/dashboard/edit', to: "dashboard#edit"
  post '/dashboard/update', to: "dashboard#update"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

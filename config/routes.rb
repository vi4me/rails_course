Rails.application.routes.draw do

  devise_for :users
  root to: 'items#index'
  get '/admin/users_count', to: 'admin#users_count'

  resources :items do #, only: %i[index create]
    get :upvote, on: :member
    get :expensive, on: :collection
  end
end

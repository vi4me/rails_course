Rails.application.routes.draw do

  resources :items do #, only: %i[index create]
    get :upvote, on: :member
    get :expensive, on: :collection
  end
end

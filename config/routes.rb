Rails.application.routes.draw do
  
  namespace :api do
    get '/creator_roles' => 'creator_roles#index'

    get '/creators/:page_num' => 'creators#index'
    get '/creator/:id' => 'creators#show'
  end
end

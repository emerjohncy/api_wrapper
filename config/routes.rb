Rails.application.routes.draw do
  
  namespace :api do
    get '/creator_roles' => 'creator_roles#index'
  end
end

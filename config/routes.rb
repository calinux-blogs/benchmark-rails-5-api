Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :v1 do
    get '/hello' => 'data_sources#hello'

    resources :data_sources, only: [:index, :show, :update] 
  end
end

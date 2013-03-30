Rails.application.routes.draw do
  resources :artworks
  get '/media' => 'media#index'
end

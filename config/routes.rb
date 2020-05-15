Rails.application.routes.draw do
  root to:"pages#home"
  devise_for :users, controllers: { registrations: 'registrations' }

  # asオプションを使うと、ルーティングに名前をつけれる
  get '/users/:id', to:'users#show', as: 'user'
end

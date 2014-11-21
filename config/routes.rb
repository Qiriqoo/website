Rails.application.routes.draw do

  root 'contacts#index'

  resources :contacts

  resource :inbox, controller: 'inbox', only: [:show, :create]

end

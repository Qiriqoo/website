Rails.application.routes.draw do

  root 'home#index'

  resources :contacts

  resource :inbox, controller: 'inbox', only: [:show, :create]

  get '/:id' , controller: 'pages', action: :show

end

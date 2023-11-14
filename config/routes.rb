Rails.application.routes.draw do

  devise_for :users, controllers: {
  sessions: 'users/sessions',
  registrations: 'users/registrations'
  # Adicione outros controladores conforme necessário
}


  resources :prog_taes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "progtae" => "prog_taes#index"

  get "home" => "home#index"

  get "formatadl" => "formata_dl#index"

  get "cainprogma" => "cainprogma#index"

  get "cofichaf" => "cofichaf#index"

  get "calculo" => "calculo#index"

  get "autorizar" => "autorizar#index"

  get "usuario" => "devise/session#new"




  # Defines the root path route ("/")
  # root "posts#index"
end

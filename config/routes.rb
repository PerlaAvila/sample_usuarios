Rails.application.routes.draw do
  get 'users/new'
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about' 
  get '/contact', to: 'static_pages#contact'
  get    '/new',   to: 'users#new'
  post   '/new',   to: 'users#create'
  get '/find', to: 'flights#find'
  get '/register', to: 'users#save'
  get '/booking', to: 'bookings#new'
  post '/booking', to: 'bookings#booking'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]


  SampleApp::Application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

    default_url_options :host => "aqueous-wildwood-92497.herokuapp.com"

    # ... snip ...
  end
end

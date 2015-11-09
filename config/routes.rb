Rails.application.routes.draw do
  post '/register' => 'auth#register'
  # patch '/confirm' => 'auth#confirm'
  post '/login' => 'auth#login'
  delete '/logout/:id' => 'auth#logout'

  resources :users, except: [:new, :edit]

  resources :profiles, except: [:new, :edit]

  resources :questions, except: [:new, :edit]

  resources :fists, except: [:new, :edit]
end

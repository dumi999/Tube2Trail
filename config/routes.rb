Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create]
  resources :events, only: [:new, :create, :edit, :show, :index, :update]
  resources :activities, only: [:index, :show] do
    resources :liked_activities, only: [:create]
  end
  resources :liked_activities, only: [:destroy]
<<<<<<< HEAD

=======
>>>>>>> 04f15094fc02ddd0a87b3682241684f0bc196b0c
  resources :chatrooms, only: [:show, :index] do
    resources :messages, only: :create
  end
  get 'home', to: 'home#index', as: 'home'
  get 'profile', to: 'profiles#show', as: 'profile'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

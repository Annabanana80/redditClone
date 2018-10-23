Rails.application.routes.draw do
  resources :advertisements
  resources :topics do
  	resources :posts, except: [:index]
    resources :sponsored_posts, except: [:index]
  end
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :questions
  get 'about' => 'welcome#about'
  get 'welcome/contact'
  get 'welcome/faq'
  post 'users/confirm' => 'users#confirm'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

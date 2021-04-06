Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts
  root to: "posts#index"

devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
}
       delete '/shared_user_delete' => "posts#shared_user"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

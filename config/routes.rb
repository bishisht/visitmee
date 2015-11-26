Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get 'home/about'
  get 'home/services'

  devise_scope :user do
    get "sign_in", to: "devise/sessions#new"
    # get "/sign_up" => "users/sessions#new", as: "new_user_registration"
  end

  root to: "home#index"
end

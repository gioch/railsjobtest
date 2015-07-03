Rails.application.routes.draw do

  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'guest#index'

  get 'seed' => 'seeder#index'

end

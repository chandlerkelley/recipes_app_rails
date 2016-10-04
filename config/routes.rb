Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :recipes
  # get 'recipes/index_page/:id', to 'recipes#index_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :notes
  resources :recipes do
  	resources :notes
  end
  # get 'recipes/index_page/:id', to 'recipes#index_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :articles
  get 'simple_pages/index'

  get 'simple_pages/about'

  get 'simple_pages/contact'

  root 'articles#landing_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }, controllers: { registrations: "user_registrations" }
  resources :users
  resources :articles do
    resources :comments
  end
  get 'simple_pages/index'

  get 'simple_pages/about'

  get 'simple_pages/contact'

  post 'simple_pages/thank_you'

  root 'articles#landing_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  root 'welcome#index'
  get 'home/' => 'home#index'

  resources :people do
    resources :spoken_quotes
    resources :posted_quotes
    resources :quotes
  end

end

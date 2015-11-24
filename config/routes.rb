Rails.application.routes.draw do

  root 'welcome#index'
  get 'home/' => 'home#index'
  get 'home/people/:id' => 'people#home_person', as: :home_person
  get 'people/select' => 'people#select', as: :person_select
  get 'people/:id/home' => 'people#person_home', as: :person_home

  resources :quotes

  resources :people do
    resources :quotes
  end

end

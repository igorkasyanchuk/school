SchoolProject::Application.routes.draw do

  namespace :admin do
    match '/', :to => 'school#index'
    resources :schools do
      resources :students
      resources :klasses
    end
  end

  root :to => 'home#index'

end

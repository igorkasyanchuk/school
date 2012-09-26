SchoolProject::Application.routes.draw do

  namespace :admin do
    match '/', :to => 'schools#index'
    resources :schools do
      resources :students
      resources :klasses
    end
    resources :klasses do
      resources :members, :only => [:index, :create, :destroy]
    end
  end

  root :to => 'home#index'

end

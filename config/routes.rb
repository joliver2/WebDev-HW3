Rails.application.routes.draw do
  resources :students
  resources :departments
  resources :semesters
  resources :courses
  resources :professors
  resources :sections
  get '/search', to: "courses#search"
  get '/search', to: "departments#search"
  get '/search', to: "professors#search"
  get '/search', to: "sections#search"
  get '/search', to: "semesters#search"
  get '/search', to: "students#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "sections#index"
end

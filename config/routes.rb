Rails.application.routes.draw do
  resources :people, except: %i[index destroy]

  root 'people#new'
end

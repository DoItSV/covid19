Rails.application.routes.draw do
  resources :people, except: %i[index destroy]

  root 'home#index'

  get '/paso-1', to: 'people#new', as: :step1
  get '/paso-2/:id', to: 'people#edit', as: :step2
  get '/resultado/:id', to: 'people#show', as: :result
end

Rails.application.routes.draw do
  resources :people, except: %i[index destroy]

  root 'home#home'

  get '/terminos_y_condiciones', to: 'home#terms_and_conditions', as: :terms_and_conditions
  get '/about_us', to: 'home#about_us', as: :about_us
  get '/preguntas_frecuentes', to: 'home#faq', as: :faq

  get '/paso-1', to: 'people#new', as: :step1
  get '/paso-2/:id', to: 'people#edit', as: :step2
  get '/resultado/:id', to: 'people#show', as: :result
end

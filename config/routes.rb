Rails.application.routes.draw do
  resources :people, except: %i[index destroy]

  root 'home#home'

  get '/terminos_y_condiciones', to: 'home#terms_and_conditions', as: :terms_and_conditions
  get '/terminos_y_condiciones_tldr', to: 'home#terms_and_conditions_tldr', as: :terms_and_conditions_tldr
  get '/about_us', to: 'home#about_us', as: :about_us
  get '/preguntas_frecuentes', to: 'home#faq', as: :faq
  get '/noticias_y_recursos', to: 'home#news_resources', as: :news_resources
  get '/aviso_de_privacidad', to: 'home#privacy_policy', as: :privacy_policy
  get '/aviso_de_privacidad_tldr', to: 'home#privacy_policy_tldr', as: :privacy_policy_tldr

  get '/paso-1', to: 'people#new', as: :step1
  get '/paso-2/:id', to: 'people#edit', as: :step2
  get '/resultado/:id', to: 'people#show', as: :result
end

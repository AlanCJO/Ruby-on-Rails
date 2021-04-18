Rails.application.routes.draw do
  # definindo home page
  root "articles#index"

  # configurando minha primeira rota
  get "/articles", to: "articles#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

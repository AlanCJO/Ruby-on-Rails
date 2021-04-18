Rails.application.routes.draw do
  root "articles#index"  # definindo home page

=begin
  get "/articles", to: "articles#index"  # configurando minha primeira rota
  get "/articles/:id", to: "articles#show" # mostrando os artigos
=end
  # entidades com operações CRUD são chamadas de recursos
  resources :articles # cria automaticamente as operações de CRUD
end

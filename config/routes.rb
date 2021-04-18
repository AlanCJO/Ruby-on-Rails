Rails.application.routes.draw do
  root "articles#index"  # definindo home page

  get "/articles", to: "articles#index"  # configurando minha primeira rota
  get "/articles/:id", to: "articles#show" # mostrando os artigos

end

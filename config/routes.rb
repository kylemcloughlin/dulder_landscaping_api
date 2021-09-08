Rails.application.routes.draw do
  resources :items
  resources :sub_cats
  resources :cats
  post :customers, to: "customer#create"
  post :inquiry_email, to: "customer#inquiry"
  post :request_quote_email, to: "customer#quote"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

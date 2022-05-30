Rails.application.routes.draw do
  resources :details_items
  root 'item#name'
  get 'item/price'
end

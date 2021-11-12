Rails.application.routes.draw do
  root to: "lists#index"
    resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: :destroy

#   GET "lists/42"
# A user can create a new list
# GET "lists/new"
# POST "lists"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

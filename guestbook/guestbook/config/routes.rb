Rails.application.routes.draw do
  resources :guestbook_entries, only: [:index, :create]

  root 'guestbook_entries#index'
end

Rails.application.routes.draw do
  resources :pets do
    delete :delete_photos
  end
  root to: "pets#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

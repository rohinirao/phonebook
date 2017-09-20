Rails.application.routes.draw do

  root to: 'home#index'
  get 'home/index'

  resources :contacts do
    resources :phone_numbers, except: :show, path_names: {edit: ""}
    resources :addresses, except: :show, path_names: {edit: ""}
  end	

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

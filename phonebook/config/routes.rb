Rails.application.routes.draw do
  root 'dashboard#index'
  get 'dashboard/index'
  
  
  resources :contacts do
    resources :contact_numbers, except: :show, path_names: {edit: ""}
    resources :contact_addresses, except: :show, path_names: {edit: ""}
  end	

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

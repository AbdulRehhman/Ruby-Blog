Rails.application.routes.draw do
  devise_for :authors
  root to: "readers/home#index"
  
  scope module: "authors" do
    resources :posts do 
      resources :elements
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
end
 
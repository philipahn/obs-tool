Rails.application.routes.draw do
root 'metros#index'
  resources :metros do
    resources :instructors
  end

  resources :instructors do
    resources :observations
  end
end

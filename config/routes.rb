Rails.application.routes.draw do
  resources :questions do
    resources :options
  end
end

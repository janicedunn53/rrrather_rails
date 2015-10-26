Rails.application.routes.draw do
  resources :questions do
    resources :options do
      member do
        post 'upvote'
      end
    end
  end
end

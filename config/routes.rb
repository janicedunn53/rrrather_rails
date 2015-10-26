Rails.application.routes.draw do
  root :to => 'questions#index'

  resources :questions do
    resources :options do
      member do
        post 'upvote'
      end
    end
  end
end

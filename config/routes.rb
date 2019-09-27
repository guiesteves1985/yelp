Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get 'top', to: 'restaurants#top'
    end
    member do                           # member => restaurant id in URL
      get 'chef', to: 'restaurants#chef'
    end
    resources :reviews, only: [:new, :create]

  end
end

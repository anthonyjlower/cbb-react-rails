Rails.application.routes.draw do
  resources :teams, only: [:index] do
    # collection do
    #   get 'sync', to: 'teams#sync'
    # end
  end
  root('teams#index')
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :heroes, only: %i[index show] do
      resources :abilities, controller: 'heroes/abilities', only: %i[index]
    end

    resources :abilities, only: %i[index show]
  end
end

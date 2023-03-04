Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # nesting
  resources :restaurants do
		resources :schedules, only: %i(new create)
		resources :foods, only: [:new, :create]
	end

  resources :foods, except: [:new, :create]
end

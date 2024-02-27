Rails.application.routes.draw do

  resources :coaches do
    resources :slots do
      resources :bookings, only: [:create]
    end
  end

  resources :students do
    resources :bookings, only: [:index, :show]
  end
end

Rails.application.routes.draw do
  get "ping" => lambda { |env| [200, { "Content-Type" => "application/json" }, ["{}"]] }

  namespace :api do
    resources :groups, only: [:index]
    resource :group_participation, only: [:create]
  end
end

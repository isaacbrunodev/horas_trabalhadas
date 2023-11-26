Rails.application.routes.draw do
  resources :sessions, only: [:new, :create]

  resources :users do
    resources :time_logs, only: [:new, :create, :index]
    member do
      get 'new_registro_de_horas'
    end
    resources :project_memberships
  end

  resources :projects do
    resources :task_types do
      resources :time_logs
    end
    resources :project_memberships
  end

  post '/login', to: 'sessions#create', as: :login
  delete '/logout', to: 'sessions#destroy', as: :logout
  root to: "sessions#new"
end

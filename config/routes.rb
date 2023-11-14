Rails.application.routes.draw do
  resources :sessions, only: [:new, :create]  # Apenas as rotas necessárias para o login

  resources :users do
    resources :time_logs
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
  root to: "projects#index"
end

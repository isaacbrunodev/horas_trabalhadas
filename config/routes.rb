# config/routes.rb
Rails.application.routes.draw do
  resources :sessions

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

  # Correção na rota para o login
  post '/login', to: 'sessions#create', as: :login
  
  root to: "projects#index"
end

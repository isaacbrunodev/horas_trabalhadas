Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
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

  root to: 'projects#index'

  # Rotas de fallback (caso nenhuma outra rota corresponda)
  get ':controller(/:action(/:id(.:format)))'
end

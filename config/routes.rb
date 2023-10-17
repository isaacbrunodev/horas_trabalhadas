Rails.application.routes.draw do
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

  # Rotas de fallback (caso nenhuma outra rota corresponda)
  get ':controller(/:action(/:id(.:format)))'
end

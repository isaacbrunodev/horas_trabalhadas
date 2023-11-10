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
# Adicione a rota personalizada para o login aqui
post '/login', to: 'sessions#create'
  
root to: "projects#index"

  # Você pode definir outras rotas personalizadas aqui, se necessário.
end

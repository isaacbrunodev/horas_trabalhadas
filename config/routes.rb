Rails.application.routes.draw do
  resources :sessions, only: [:new, :create] 

  resources :users do
    resources :time_logs, except: [:new]
    get 'new_registro_de_horas', to: 'time_logs#new_registro_de_horas', on: :member
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

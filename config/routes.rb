Rails.application.routes.draw do
  resources :summary_reports, as: "relatorio_simples", path_names: { new: "novo", show: "visualizar" }
  resources :sessions, as: "sessao", path_names: { new: "nova" }
  resources :users, as: "usuarios", path_names: { new: "novo", edit: "ver" } do
    resources :time_logs, as: "registro_de_horas", path_names: { new: "novo", edit: "ver" }
  end
  resources :projects, as: "projetos", path_names: { new: "novo", edit: "ver" } do
    resources :task_types, as: "tipos_de_tarefas", path_names: { new: "novo", edit: "ver" }
    resources :project_memberships, as: "associacao", path_names: { new: "nova", edit: "ver" }
  end

  root "projects#show"
end

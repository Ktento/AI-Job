Rails.application.routes.draw do
  resources :job_hunting_infos
  get "/", to: "top#index"

  get "/login", to: "login#try"
end

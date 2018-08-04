Rails.application.routes.draw do
  resources :pipelines
  resources :categories
  resources :employees
  resources :notes
  resources :job_openings

  resources :companies do
    resources :notes
    resources :job_openings
  end

  root 'categories#index'

  post "/company_linker" => "categories#link" , as: "link_company_to_category"
  post "/category_linker" => "pipelines#link" , as: "link_category_to_pipeline"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

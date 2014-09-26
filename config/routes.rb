Rails.application.routes.draw do
  get 'clients' =>   "clients#index"
  get 'clients/:id' => "clients#show", as: 'client'
  get 'clients/:id/edit' => "clients#edit", as: 'edit_client'
  patch 'clients/:id' => "clients#update"
  root "clients#index"
end

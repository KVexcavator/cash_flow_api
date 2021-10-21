Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:index] 
      resources :cash_flows, only: [:index] 
      get 'account_state/:user_id', to: 'cash_flows#account_state'
      get 'total/:user_id', to: 'cash_flows#total'
    end
  end
end

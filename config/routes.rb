Rails.application.routes.draw do
    root "teams#index"
    resources :teams do
        get "/search", to: "teams#search"
        get "/add", to: "teams#add"
    end
    resources :users do
        patch "/assign_team", to: "users#assign_team"
    end
end

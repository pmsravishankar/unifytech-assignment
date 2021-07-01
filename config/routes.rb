Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events
  get 'repos/:repo_id/events' => 'repos#events', as: :repo_events
end

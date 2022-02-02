Rails.application.routes.draw do
  resources :birds#, only: [:index, :show, :create, :update, :destroy] # Deprecated due to full CRED RESTful route usage
  patch "/birds/:id/like", to: "birds#increment_likes"
end

Rails.application.routes.draw do
  resources :bloggers
  resources :posts
  resources :destinations

  put '/posts/:id/like', to: 'posts#like', as: 'like'
end

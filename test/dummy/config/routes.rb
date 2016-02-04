Rails.application.routes.draw do
  root 'paginated_objects#index'

  resources :paginated_objects, only: :index
end

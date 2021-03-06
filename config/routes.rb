EvoPos::Application.routes.draw do
  get "menu/index"
  get "poshome/index"
  get "poshome/order"
  get "poshome/build"
  get "poshome/settings"
  get "poshome/admin"
  get "sessions/login"
  get "users/new"
  post "orders/create"
  resources :users
  resources :menu
  resources :orders do
    resources :order_items
  end
  post 'orders/:id' => 'orders#done'

  get "adminsetup/index"
  root 'adminsetup#index'

  post 'users/admin_create'
  get "login", :to => "sessions#login"
  get "/sessions/login_attempt", :to => "sessions#login_attempt"
  post '/sessions/login_attempt'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

Blueskies::Application.routes.draw do
  resources :sales

  get "community/index"
  get "home/search"
  post "home/search"

  get "home/custlist"
  post "home/custlist"
  
  resources :promotions

  resources :dailies

  resources :manifests

  resources :customers

  get "home/index"
  get "home/about"
  get "home/contact"
  get "manifests/index"
  get "dailies/index"
  get "customers/index"
  get "home/announcement"
  get "home/conditions"
  get "home/privacy"
  get "home/site_map"
  get "home/support"
  get "promotion/index"
  post "promotion/index"
  get "promotion/show"
  post "promotion/show"
  get "sale/show"


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

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

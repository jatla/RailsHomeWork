RailsHomeWork::Application.routes.draw do

  
  resources :projects

  resources :students

  resources :home_works

  root 'pages#home'

  get "week1" => 'week1#index'
  get "week2(/:caction)" => 'week2#index', as: :week2
  get "week3" => 'week3#index', as: :week3
  get "week3/useDifferentLayoutThanWeek3Layout" => 'week3#useDifferentLayoutThanWeek3Layout', as: :week3_dff_layout
  get "week3/fallBackToDefaultApplicationLayout" => 'week3#fallBackToDefaultApplicationLayout', as: :week3_fallback_layout
  get "week6" => 'week6#index', as: :week6

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

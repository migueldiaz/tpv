Tpv::Application.routes.draw do
  resources :tickets

  get "home/index"
  resources :items
  resources :categories
  resources :bills do
   resources :items
  end

  #put "additem" => "bills/:id/add", :as => "additem"
   #   match 'bills/:id/add' => 'bill#add', :as => :additem
  # match 'bills/:id/add' => 'bill#add', :as => :additem
  
  # This route can be invoked with additem_url(:id => @bill)
 # post "bills/:id/add"
  
  resources :tables do
     resource :bill
  end
  resources :products do
   resources :items
  end
  
  # match 'items/:id/plus' => 'item#plus'
 #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  match 'items/:id/plus' => 'items#plus',:as=>:plus
  match 'items/:id/minus' => 'items#minus',:as=>:minus
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
 
  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

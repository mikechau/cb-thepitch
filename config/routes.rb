Careerbuilder::Application.routes.draw do

get    "/jobs"                                   => 'career#index',    :as => :jobs
get    "/jobs/results"                           => 'career#results'
get    "/jobs/description/:did"                  => 'career#description'

get    "/jobs/description/:did/pitches"          => 'career#index',    :as => :pitches
post   "/jobs/description/:did/pitches"          => 'career#create'

get    "/jobs/description/:did/pitches/new"      => 'career#new',      :as => :new_pitch

get    "/jobs/description/:did/pitches/:id"      => 'career#show',     :as => :pitch
delete "/jobs/description/:did/pitches/:id"      => 'career#destroy'
    
put    "/jobs/description/:did/pitches/:id"      => 'career#update'
get    "/jobs/description/:did/pitches/:id/edit" => 'career#edit',     :as => :edit_pitch

get    "/recruiter"                              => 'recruiter#recruiter_search', :as => :recruiter
get    "/recruiter/index"                        => 'recruiter#recruiter_index',  :as => :recruiter_index


#post "/jobs/results" => 'career#create'
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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

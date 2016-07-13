Rails.application.routes.draw do
  devise_for :users
	resources :jobs
  	root 'jobs#index'

  	# paginator friendly URLs
  	resources :jobs do
	  get 'page/:page', :action => :index, :on => :collection
	end
end

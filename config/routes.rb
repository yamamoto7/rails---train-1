Rails.application.routes.draw do
  devise_for :users
	root 'home#top'
	get '/about' => 'home#about', as: 'about'

	resources :users
	resources :books
	# get '/' => 'home#top', as: 'root'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :notes, only: [:create, :update, :index, :show, :destroy]

  root :to => "notes#index"
  post '/users/:id/add_note/:note_id', to: 'users#add_note'
	delete '/users/:id/remove_note/:note_id', to: 'users#remove_note'

	post '/tags/:title/add_to_note/:note_id', to: 'tags#add_to_note'
	delete '/tags/:title/remove_from_note/:note_id', to: 'tags#remove_from_note'
end

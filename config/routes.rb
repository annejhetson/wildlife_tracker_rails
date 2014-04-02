WildlifeTracker::Application.routes.draw do
  match('species', {:via => :get, :to => 'species#index'})
  match('species/new', {:via => :post, :to => 'species#create'})
  match('species/new', {:via => :get, :to => 'species#new'})
  match('species/:id', {:via => :get, :to => 'species#show'})
  match('species/:id', {:via => :delete, :to => 'species#destroy'})
  match('species/:id', {:via => :post, :to => 'sighting#create'})
  match('species/:id/edit', {:via => [:patch, :put], :to => 'species#update'})
  match('species/:id/edit', {:via => :get, :to => 'species#edit'})

  match('locations', {:via => :get, :to => 'location#index'})

  match('sightings', {:via => :get, :to => 'sighting#index'})
  match('sightings', {:via => :post, :to => 'sighting#create2'})

end

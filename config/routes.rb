Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :taxon_groups
  end
end

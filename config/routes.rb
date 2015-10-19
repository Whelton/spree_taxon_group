Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :taxon_groups do
      member do
        get :positions, to: 'taxon_groups#positions'
        patch :positions, to: 'taxon_groups#update_positions'
      end
    end
  end
end

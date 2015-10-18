module Spree
  module Admin
    class TaxonGroupsController < ResourceController
      before_action :load_taxons, only: [:new, :edit]

      def edit
        # Sort taxons based on if taxon is in taxon group's taxons
        @taxons = @taxons.sort_by{|taxon| taxon.id.in?(@taxon_group.taxon_ids) ? 0 : 1}
      end

      private

      def load_taxons
        @taxons = Spree::Taxon.all
      end
    end
  end
end

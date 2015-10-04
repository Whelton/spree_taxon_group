module Spree
  module Admin
    class TaxonGroupsController < ResourceController
      before_action :load_taxons, only: [:new, :edit]

      private

      def load_taxons
        @taxons = Spree::Taxon.all
      end
    end
  end
end

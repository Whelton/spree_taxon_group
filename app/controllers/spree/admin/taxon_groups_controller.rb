module Spree
  module Admin
    class TaxonGroupsController < ResourceController
      before_action :load_taxons, only: [:new, :edit, :create]
      before_action :load_taxon_group, only: [:update_positions]

      def positions
        @taxon_group_memberships = @taxon_group.taxon_group_memberships.order(:position)
      end

      def update_positions
        begin
          update_positions_params.each do |id, position|
            Spree::TaxonGroupMembership.update(id, position: position)
          end

          flash[:success] = flash_message_for(@taxon_group, :successfully_updated)
        rescue => e
          flash[:error] = e.message
        end

        respond_with(@taxon_group) do |format|
          format.html { redirect_to positions_admin_taxon_group_url(@taxon_group) }
          format.json { render json: @taxon_group.to_json }
        end
      end

      private

      def load_taxons
        @taxons = Spree::Taxon.all
      end

      def load_taxon_group
        @taxon_group = Spree::TaxonGroup.find(params[:id])
      end

      def update_positions_params
        params.require(:taxon_group_membership).require(:position)
      end
    end
  end
end

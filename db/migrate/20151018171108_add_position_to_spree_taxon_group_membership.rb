class AddPositionToSpreeTaxonGroupMembership < ActiveRecord::Migration
  def change
    add_column :spree_taxon_group_memberships, :position, :integer
  end
end

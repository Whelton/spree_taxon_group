class CreateSpreeTaxonGroupMemberships < ActiveRecord::Migration
  def self.up
    create_table :spree_taxon_group_memberships do |t|
      t.integer :taxon_group_id
      t.integer :taxon_id
    end
  end

  def self.down
    drop_table :spree_taxon_group_memberships
  end
end

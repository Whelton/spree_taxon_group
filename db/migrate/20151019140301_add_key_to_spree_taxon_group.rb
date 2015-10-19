class AddKeyToSpreeTaxonGroup < ActiveRecord::Migration
  def change
    add_column :spree_taxon_groups, :key, :string
  end
end

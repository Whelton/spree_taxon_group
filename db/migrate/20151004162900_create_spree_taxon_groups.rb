class CreateSpreeTaxonGroups < ActiveRecord::Migration
  def self.up
    create_table :spree_taxon_groups do |t|
      t.string :name
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :spree_taxon_groups
  end
end

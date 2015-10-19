class UpdateKeysWhereNilForSpreeTaxonGroup < ActiveRecord::Migration
  def up
    Spree::TaxonGroup.where(key: nil).each do |taxon_group|
      taxon_group.update(key: taxon_group.name.downcase)
    end
  end
end

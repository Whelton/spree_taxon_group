Spree::Taxon.class_eval do
  has_many :taxon_group_memberships, class_name: 'Spree::TaxonGroupMembership', dependent: :destroy
  has_many :taxon_groups, through: :taxon_group_memberships
end

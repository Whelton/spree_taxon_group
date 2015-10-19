module Spree
  class TaxonGroup < ActiveRecord::Base
    validates :name, presence: true
    validates :key, presence: true

    has_many :taxon_group_memberships, class_name: 'Spree::TaxonGroupMembership', dependent: :destroy
    has_many :taxons, through: :taxon_group_memberships
  end
end

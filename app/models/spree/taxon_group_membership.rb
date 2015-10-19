module Spree
  class TaxonGroupMembership < ActiveRecord::Base
    validates :taxon_group, presence: true
    validates :taxon, presence: true
    validates :position, presence: true, numericality: { only_integer: true }

    belongs_to :taxon_group
    belongs_to :taxon
  end
end

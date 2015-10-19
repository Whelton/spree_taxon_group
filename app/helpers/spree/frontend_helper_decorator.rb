Spree::FrontendHelper.class_eval do
  def taxon_group_tree(taxon_group, current_taxon)
    content_tag :div, class: 'list-group' do
      taxon_group.taxon_group_memberships.sort_by(&:position).map do |membership|
        css_class = (current_taxon.eql? membership.taxon) ? 'list-group-item active' : 'list-group-item'
        link_to(membership.taxon.name, seo_url(membership.taxon), class: css_class)
      end.join("\n").html_safe
    end
  end
end

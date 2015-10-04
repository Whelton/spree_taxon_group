Spree::FrontendHelper.class_eval do
  def taxon_group_tree(taxon_group, current_taxon)
    content_tag :div, class: 'list-group' do
      taxon_group.taxons.map do |taxon|
        css_class = (current_taxon.eql? taxon) ? 'list-group-item active' : 'list-group-item'
        link_to(taxon.name, seo_url(taxon), class: css_class)
      end.join("\n").html_safe
    end
  end
end

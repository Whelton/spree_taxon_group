Deface::Override.new(
  virtual_path: 'spree/admin/shared/sub_menu/_product',
  name: 'taxon_groups_admin_sidebar_product_menu_item',
  insert_bottom: '#sidebar-product',
  text: '<%= tab :taxon_groups, :match_path => "/taxon_groups" %>'
)

# Spree Taxon Group

Easily create and manage groups of taxons, irrespective of their parent or children taxons/taxonomies.
Useful if you need flexible taxon usage, for example a group of taxons for featured categories from different parent taxon/taxonomies.

---

## Usage

If you want a taxon tree, similar to `taxons_tree` in the default spree sidebar. You can use the helper `taxon_group_tree`:

```html
<nav id="featured-categories" class="sidebar-item" data-hook>
  <% featured = Spree::TaxonGroup.find_by_name('featured') %>
  <% cache [I18n.locale, featured] do %>
    <h4 class='taxon-group-root'><%= Spree.t(:shop_by_taxon_group, :taxon_group => featured.name) %></h4>
    <%= taxon_group_tree(featured, @taxon) %>
  <% end %>
</nav>
```

---

## Basic Installation

Add to your `Gemfile`:

```ruby
gem 'spree_taxon_group', github: 'whelton/spree_taxon_group', branch: 'master'
```

Run:

```sh
bundle && bundle exec rails g spree_taxon_group:install
```

That's it!

---

## Contributing

See corresponding [guidelines][1] and check out the [issues][2].

---

Copyright (c) 2015 [James Whelton][3] and [contributors][4], released under the [New BSD License][5]

[1]: https://github.com/whelton/spree_taxon_group/blob/master/CONTRIBUTING.md
[2]: https://github.com/whelton/spree_taxon_group/issues
[3]: https://github.com/whelton
[4]: https://github.com/whelton/spree_taxon_group/graphs/contributors
[5]: https://github.com/whelton/spree_taxon_group/blob/master/LICENSE.md

# coding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_taxon_group/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_taxon_group'
  s.version     = SpreeTaxonGroup.version
  s.summary     = 'Extension to create and manage groups of taxons'
  s.description = s.summary
  s.required_ruby_version = '>= 2.0.0'

  s.author    = 'James Whelton'
  s.email     = 'james@whelton.io'
  s.homepage  = 'https://github.com/whelton/spree_taxon_group'
  s.license   = 'BSD-3'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 3.1.0.beta'
end

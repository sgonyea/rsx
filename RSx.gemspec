# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "RSx/version"

Gem::Specification.new do |s|
  s.name        = 'rsx'
  s.version     = RSx::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Scott Gonyea', 'Tianqing Gonyea']
  s.email       = %w[gonyea@gmail.com]
  s.homepage    = 'http://rsx.github.com/'
  s.summary     = 'RSx: The R Statistical Language, in Rubinius'
  s.description = 'RSx seeks to implement R, using the terrific Rubinius bytecode'

  s.rubyforge_project = 'rsx'

  s.add_dependency 'yard',  '~> 0.6.4'
  s.add_development_dependency 'mspec',     '~> 1.5.0'
  s.add_development_dependency 'rspec',     '~> 2.3.0'
  s.add_development_dependency 'autotest',  '~> 4.4.6'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.executables   = ["rsx"]
end

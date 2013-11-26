# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hammer_cli/version"

Gem::Specification.new do |s|

  s.name          = "hammer_cli"
  s.version       = HammerCLI.version.dup
  s.platform      = Gem::Platform::RUBY
  s.authors       = ["Martin Bačovský", "Tomáš Strachota"]
  s.email         = "mbacovsk@redhat.com"
  s.homepage      = "http://github.com/theforeman/hammer-cli"
  s.license       = "GPL-3"

  s.summary       = %q{Universal command-line interface}
  s.description   = <<EOF
Hammer cli provides universal extendable CLI interface for ruby apps
EOF

  s.files            = `git ls-files -- {lib,bin,doc,config,test}/* README* LICENSE hammer_cli_complete`.split("\n")
  s.test_files       = `git ls-files -- test/*`.split("\n")
  s.extra_rdoc_files = `git ls-files -- {doc,config}/* README*`.split("\n")
  s.require_paths = ["lib"]
  s.executables = ['hammer']

  s.add_dependency 'clamp'
  s.add_dependency 'rest-client'
  s.add_dependency 'logging'
  s.add_dependency 'awesome_print'
  s.add_dependency 'table_print'
  s.add_dependency 'highline'

  # required for ruby < 1.9.0:
  s.add_dependency 'fastercsv'             #fastercsv is default for ruby >=1.9 but it's missing in 1.8.X
  s.add_dependency 'mime-types', '< 2.0.0' #newer versions of mime-types are not 1.8 compatible

end

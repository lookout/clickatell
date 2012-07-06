# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "clickatell/version"

Gem::Specification.new do |s|
  s.name        = "lookout-clickatell"
  s.version     = Clickatell::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Luke Redpath", 'Kyle Barton', 'R. Tyler Croy']
  s.email       = ["luke@lukeredpath.co.uk", ]
  s.homepage    = "https://github.com/lookout/clickatell"
  s.summary     = %q{Ruby interface to the Clickatell SMS gateway service.}
  s.description = %q{Ruby interface to the Clickatell SMS gateway service.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

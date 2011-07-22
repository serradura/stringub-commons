# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sub-general/version"

Gem::Specification.new do |s|
  s.name        = "sub-general"
  s.version     = Sub::General::VERSION
  s.authors     = ["Rodrigo Serradura"]
  s.email       = ["rserradura@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Useful methods for strings}
  s.description = %q{Adds new general purpose methods to String class. E.g: split a string in words, replace a sequence of spaces per a unique space.}

  s.rubyforge_project = "sub-general"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

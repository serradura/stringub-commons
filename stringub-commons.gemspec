# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "stringub-commons/version"

Gem::Specification.new do |s|
  s.name        = "stringub-commons"
  s.version     = Stringub::Commons::VERSION
  s.authors     = ["Rodrigo Serradura"]
  s.email       = ["rserradura@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Useful methods for strings}
  s.description = %q{This library borned from the early versions of string_utility_belt gem, this gem adds new common purpose methods to String class. E.g: split a string in words, replace a sequence of spaces per a unique space.}
  
  s.rubyforge_project = "stringub-commons"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

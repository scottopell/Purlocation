# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'purlocation/version'

Gem::Specification.new do |spec|
  spec.name          = "purlocation"
  spec.version       = Purlocation::VERSION
  spec.authors       = ["Scott Opell"]
  spec.email         = ["me@scottopell.com"]
  spec.summary       = %q{Translates a Purdue building code to a location}
  spec.description   = %q{Example: BRNG => Beering Hall}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_dependency "nori"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gatemedia_rubocop/version'

Gem::Specification.new do |spec|
  spec.name          = "gatemedia_rubocop"
  spec.version       = GatemediaRubocop::VERSION
  spec.authors       = ["Ben Colon"]
  spec.email         = ["ben.colon@gatemedia.ch"]

  spec.summary       = %q{Rubocop config file for Gatemedia projects}
  spec.description   = %q{Rubocop config file for Gatemedia projects}
  spec.homepage      = "http://gatemedia.ch"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end

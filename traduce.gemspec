# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'traduce/version'

Gem::Specification.new do |spec|
  spec.name            = "traduce"
  spec.version         = Traduce::VERSION
  spec.authors         = ["Patrick Metcalfe"]
  spec.email           = ["git@patrickmetcalfe.com"]

  spec.summary         = %q{This gem can conjugate any verb in Spanish!}
  spec.homepage        = "https://github.com/pducks32/traduce"
  spec.metadata        =  { "source_code" => "https://github.com/pducks32/traduce" }
  spec.license         = "MIT"
  
  spec.files           = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir          = "exe"
  spec.executables     = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths   = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'signed_form/simple_form/version'

Gem::Specification.new do |spec|
  spec.name          = "signed_form-simple_form"
  spec.version       = SignedForm::SimpleForm::VERSION
  spec.authors       = ["Erich Menge"]
  spec.email         = ["erich.menge@me.com"]
  spec.description   = %q{SimpleForm adapter for SignedForm}
  spec.summary       = %q{SimpleForm adapter for SignedForm}
  spec.homepage      = "https://github.com/erichmenge/signed_form-simple_form"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "signed_form", ">= 0.2"
  spec.add_dependency "simple_form", "~> 2.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.13"
end

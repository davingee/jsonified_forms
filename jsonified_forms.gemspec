# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jsonified_forms/version'

Gem::Specification.new do |spec|
  spec.name          = "jsonified_forms"
  spec.version       = JsonifiedForms::VERSION
  spec.authors       = ["Scott Smith", "Charlie Martin", "Randall Antler"]
  spec.email         = ["scottsmit@gmail.com"]
  spec.description   = %q{Jsonified forms! render_form("users_form", f) put users_form.json in the app/forms_json/ directory and declare everything in the json file. Sexxy? Yes!}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

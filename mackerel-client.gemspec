# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "mackerel-client"
  spec.version       = File.read("VERSION").strip
  spec.authors       = ["Mackerel developer team"]
  spec.email         = ["developers@mackerel.io"]
  spec.summary       = 'Mackerel client implemented by Ruby.'
  # spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'faraday', '~> 0.9'

  spec.add_development_dependency "rake"
  spec.add_development_dependency "bundler", "~> 1.5"
end

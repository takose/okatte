# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'okatte/version'

Gem::Specification.new do |spec|
  spec.name          = "okatte"
  spec.version       = Okatte::VERSION
  spec.authors       = ["tako"]
  spec.email         = ["rina.m.takase@gmail.com"]

  spec.summary       = %q{cook with ruby}
  spec.description   = %q{cook with ruby}
  spec.homepage      = "https://github.com/takose/okatte"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'file_manipulate/version'

Gem::Specification.new do |spec|
  spec.name          = "file_manipulate"
  spec.version       = FileManipulate::VERSION
  spec.authors       = ["liyongkuan"]
  spec.email         = ["lykperson@163.com"]
  spec.summary       = %q{This is a file manipulate library}
  spec.description   = %q{This is a file manipulate library}
  spec.homepage      = "https://github.com/liyongkuan/file_manipulate"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end

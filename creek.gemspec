# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'creek/version'

Gem::Specification.new do |spec|
  spec.name          = "creek"
  spec.version       = Creek::VERSION
  spec.authors       = ["pythonicrubyist"]
  spec.email         = ["pythonicrubyist@gmail.com"]
  spec.description   = %q{Parses large XLSX and XLSM files fast and efficiently using streaming parsing method.}
  spec.summary       = %q{A Ruby library for parsing large XLSX and XLSXM files.}
  spec.homepage      = "https://github.com/pythonicrubyist/creek"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.9'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec', '~> 2.13.0'

  spec.add_dependency  'sax-machine', '~> 0.1.0'
  spec.add_dependency 'nokogiri', '~> 1.6.0'
  spec.add_dependency 'rubyzip', '~> 0.9.9'  
end
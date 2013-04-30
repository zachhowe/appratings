# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'appratings/version'

Gem::Specification.new do |spec|
  spec.name          = "appratings"
  spec.version       = AppRatings::VERSION
  spec.authors       = ["Zach Howe"]
  spec.email         = ["zach@zachhowe.com"]
  spec.description   = %q{Fetches iOS app store ratings}
  spec.summary       = %q{Fetches iOS app store ratings}
  spec.homepage      = "https://github.com/zachhowe/appratings"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "nokogiri", "~> 1.5.6"
  spec.add_development_dependency "json", "~> 1.7.6"
end

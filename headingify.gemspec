# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'headingify/info'

Gem::Specification.new do |s|
  s.name          = "headingify"
  s.version       = Headingify::VERSION
  s.authors       = ["Chris Calo"]
  s.email         = ["ccalo@vulcanca.com"]
  s.summary       = "A method used to convert a Ruby String into a grammatically correct heading."
  s.description   = "#{s.summary} It extends String class; currently English only. Please contribute on Github if you have an adept knowledge of articles, conjunctions, prepositions, and grammatical syntax in non-English languages."
  s.homepage      = "https://github.com/vulcancreative/headingify"
  s.license       = "MIT"

  s.files         = `git ls-files -z`.split("\x0")
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.required_ruby_version = '>= 1.9.3'
  s.add_development_dependency "rspec"
  s.add_development_dependency "bundler", "~> 1.7"
  s.add_development_dependency "rake", "~> 10.0"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'open/dojo/version'

Gem::Specification.new do |spec|
  spec.name          = "open-dojo"
  spec.version       = Open::Dojo::VERSION
  spec.authors       = ["Andrew Babichev"]
  spec.email         = ["andrew.babichev@gmail.com"]

  spec.summary       = %q{Test task for Ruby applicants.}
  spec.description   = %q{The goal of this task is to check your ability to test, refactor and implement new functionality on a given system.}
  spec.homepage      = "https://github.com/Tensho/open-dojo"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "sqlite3"
  spec.add_dependency "activerecord"

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "factory_girl"
end

# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/version'

Gem::Specification.new do |gem|
  gem.name          = "capistrano"
  gem.version       = Capistrano::VERSION
  gem.authors       = ["Tom Clements", "Lee Hambley"]
  gem.email         = ["seenmyfate@gmail.com", "lee.hambley@gmail.com"]
  gem.description   = %q{Capistrano is a utility and framework for executing commands in parallel on multiple remote machines, via SSH.}
  gem.summary       = %q{Capistrano - Welcome to easy deployment with Ruby over SSH}
  gem.homepage      = "http://capistranorb.com/"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = ['cap', 'capify']
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.licenses      = ['MIT']

  gem.required_ruby_version = '>= 1.9.3'
  gem.add_dependency 'sshkit', '>= 1.7.1'
  gem.add_dependency 'rake', '>= 10.0.0'
  gem.add_dependency 'i18n'
  gem.add_dependency 'parallel', '>= 1.6.1'

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'mocha'
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/inspeqtor/version'

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-inspeqtor'
  spec.version       = Capistrano::Inspeqtor::VERSION
  spec.authors       = ['Abdelkader Boudih']
  spec.email         = ['terminale@gmail.com']
  spec.summary       = %q(Inspeqtor integration for Capistrano)
  spec.description   = spec.summary
  spec.license       = 'LGPLv3'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'capistrano', '~> 3.0'
end

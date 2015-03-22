# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kwstruct'

Gem::Specification.new do |spec|
  spec.name          = 'kwstruct'
  spec.version       = KwStruct::VERSION
  spec.authors       = ['Maxim Chernyak']
  spec.email         = ['max@bitsonnet.com']

  spec.summary       = 'Struct with keyword arguments support'
  spec.homepage      = 'https://github.com/maxim/kwstruct'
  spec.license       = 'MIT'

  spec.files         = %w(
                          CODE_OF_CONDUCT.md
                          LICENSE.txt
                          README.md
                          kwstruct.gemspec
                          lib/kwstruct.rb
                        )

  spec.require_paths = ['lib']
end

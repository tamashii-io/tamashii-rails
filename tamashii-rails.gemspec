# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'tamashii/rails/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'tamashii-rails'
  s.version     = Tamashii::Rails::VERSION
  s.authors     = ['蒼時弦也']
  s.email       = ['elct9620@frost.tw']
  s.homepage    = 'https://Tamashii.io'
  s.summary     = 'The tamashii support for rails'
  s.description = 'The tamashii support for rails'
  s.license     = 'Apache-2.0'

  s.files = Dir['{app,config,db,lib}/**/*', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '>= 5.0'
  s.add_dependency 'tamashii-manager', '>= 0.2.3'

  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'codeclimate-test-reporter'
end

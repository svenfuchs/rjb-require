# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)
require 'rjb_require/version'

Gem::Specification.new do |s|
  s.name         = "rjb-require"
  s.version      = RjbRequire::VERSION
  s.authors      = ["Sven Fuchs"]
  s.email        = "svenfuchs@artweb-design.de"
  s.homepage     = "http://github.com/svenfuchs/rjb-require"
  s.summary      = "Adds the ability to import and map Java packages to nested Ruby modules/classes to RJB"
  s.description  = "Adds the ability to import and map Java packages to nested Ruby modules/classes to RJB. Based on http://bit.ly/aBLnei"

  s.files        = Dir['{lib/**/*,[A-Z]*}']
  s.platform     = Gem::Platform::RUBY
  s.require_path = 'lib'
  s.rubyforge_project = '[none]'
  s.required_rubygems_version = '>= 1.3.6'
end

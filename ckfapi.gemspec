require 'rubygems'
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ckfapi/version'

spec = Gem::Specification.new do |s|
  s.name = "ckfapi"
  s.version = Ckfapi::VERSION
  s.summary = "CFK API by kienbd"
  s.description = "Ruby library to access CKF service"
  s.author = ["kienbd"]
  s.email = ["doankien.bui@gmail.com"]
  s.license = ""
  s.homepage = "http://kienbui.com"

  s.files = `git ls-files`.split($\)
  s.test_files = Dir.glob("rspec/*_spec.rb")
  s.require_paths = ["lib"]
  s.has_rdoc = true
  s.required_ruby_version = '>= 1.9.3'

  #s.add_runtime_dependency
  #s.add_development_dependency
  s.add_dependency("activesupport")
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'pry'
end


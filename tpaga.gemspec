# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "tpaga/swagger/version"

Gem::Specification.new do |s|
  s.name        = "tpaga"
  s.date        = "2017-01-18"
  s.version     = Tpaga::Swagger::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors       = ["Sebastian Ortiz V."]
  s.email         = ["sebastian@tpaga.co"]
  s.homepage    = "https://tpaga.co"
  s.license = 'Apache License, v2.0'
  s.summary     = %q{TPaga API Ruby Bindings powered by Swagger}
  s.description = %q{TPaga Payment Gateway API

[Learn about TPaga](https://tpaga.co)

[More information about this library] (http://tpaga.co/docs)
}
  s.add_runtime_dependency 'typhoeus', '~> 0.2', '>= 0.2.1'
  s.add_runtime_dependency 'addressable', '~> 2.2', '>= 2.2.4'
  s.add_runtime_dependency 'json', '>= 1.4.6'

  s.files         = `find *`.split("\n").uniq.sort.select{|f| !f.empty? }
  s.executables   = []
  s.require_paths = ["lib"]
end

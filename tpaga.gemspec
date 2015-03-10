# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "tpaga"
  s.date        = "2015-03-10"
  s.version     = "0.0.3"
  s.platform    = Gem::Platform::RUBY
  s.authors       = ["Sebastian Ortiz V."]
  s.email         = ["sortiz@tpaga.co"]
  s.homepage    = "https://tpaga.co"
  s.summary     = %q{TPaga API Ruby Bindings powered by Swagger}
  s.description = %q{TPaga Payment Gateway API

[Learn about TPaga](https://tpaga.co)

[More information about this library](http://restunited.com/releases/515503086426391602/wrappers)
}
  s.license     = 'Apache License, Version 2.0'

  s.add_runtime_dependency 'typhoeus', '~> 0.2', '>= 0.2.1'
  s.add_runtime_dependency 'addressable', '~> 2.2', '>= 2.2.4'
  s.add_runtime_dependency 'json', '~> 1.4', '>= 1.4.6'

  s.files         = `find *`.split("
").uniq.sort.select{|f| !f.empty? }
  s.executables   = []
  s.require_paths = ["lib", "models"]
end

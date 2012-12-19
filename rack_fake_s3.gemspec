# -*- encoding: utf-8 -*-
require File.join(File.dirname(__FILE__), 'lib', 'rack_fake_s3', 'version')

Gem::Specification.new do |s|
  s.name        = "rack_fake_s3"
  s.version     = RackFakeS3::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Mario Visic']
  s.email       = ['mario.visic@envato.com']
  s.homepage    = "https://github.com/envato/rack_fake_s3"
  s.summary     = %q{Rack Fake S3 is a dummy rack app that simulates S3 for local integration testing. Originally created by Curtis Spencer, modified by Mario Visic at Envato.}
  s.description = %q{Test S3 integration locally. Originally created by Curtis Spencer, modified by Mario Visic at Envato.}

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "aws-s3"
  s.add_development_dependency "right_aws"
  s.add_development_dependency "rake"
  s.add_development_dependency "rest-client"

  s.add_dependency "thor"
  s.add_dependency "builder"
  s.add_dependency "rack"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

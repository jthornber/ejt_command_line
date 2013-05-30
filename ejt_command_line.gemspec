# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ejt_command_line/version'

Gem::Specification.new do |spec|
  spec.name          = "ejt_command_line"
  spec.version       = EjtCommandLine::VERSION
  spec.authors       = ["Joe Thornber"]
  spec.email         = ["ejt@redhat.com"]
  spec.description   = %q{Yet another command line parser.  Allows you define argument types}
  spec.summary       = %q{Command line parser}
  spec.homepage      = ""
  spec.license       = "GPL"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end

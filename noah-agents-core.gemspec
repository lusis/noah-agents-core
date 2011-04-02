# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "noah-agents-core/version"

Gem::Specification.new do |s|
  s.name        = "noah-agents-core"
  s.version     = Noah::Agents::Core::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["John E. Vincent"]
  s.email       = ["lusis.org+rubygems.org@gmail.com"]
  s.homepage    = "https://github.com/lusis/noah-agents-core"
  s.summary     = %q{Core callback agents for Noah}
  s.description = %q{This is the core package of supported callbacks for Noah}

  s.rubyforge_project = "noah-agents-core"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency("eventmachine", "1.0.0.beta.3")
  s.add_dependency("em-http-request", "1.0.0.beta.3")
  s.add_dependency("yajl-ruby")

  s.add_development_dependency("rspec", "~> 2.5")
end

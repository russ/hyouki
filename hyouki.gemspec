# -*- encoding: utf-8 -*-
require File.expand_path('../lib/hyouki/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Russ Smith"]
  gem.email         = ["russ@bashme.org"]
  gem.description   = %q{A better way to view and design emails.}
  gem.summary       = %q{A better way to view and design emails.}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "hyouki"
  gem.require_paths = ["lib"]
  gem.version       = Hyouki::VERSION
end

# -*- encoding: utf-8 -*-
require File.expand_path('../lib/git_hook-rspec/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Sho Kusano"]
  gem.email         = ["rosylilly@aduca.org"]
  gem.description   = %q{git pre-commit hook. run all rspec.}
  gem.summary       = %q{git pre-commit hook. run all rspec.}
  gem.homepage      = "https://github.com/rosylilly/git_hook-rspec"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "git_hook-rspec"
  gem.require_paths = ["lib"]
  gem.version       = GitHook::Rspec::VERSION

  gem.add_dependency 'git_hook'
end

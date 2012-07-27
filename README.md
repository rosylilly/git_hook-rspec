# GitHook::Rspec

git pre-commit hook. run all rspec.

## Installation

Add this line to your application's Gemfile:

    gem 'git_hook-rspec'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install git_hook-rspec

And Add this line to your application's .githooks:

    pre_commit 'GitHook::Rspec', :require => 'git_hook-rspec'

And then execute:

    $ git hook apply

## Usage

git hook gem.

write your .githooks:

    pre_commit 'GitHook::Rspec',
      :require => 'git_hook-rspec,
      :bundler => true, # using bundler. execute rspec comamnd with `bundle exec`
      :binstabs => false, # rspec inside `binstabs` folder. true is 'bin'. false is not inside binstabs folder.
      :cli => '' # rspec cli options. example: "--color --format d"


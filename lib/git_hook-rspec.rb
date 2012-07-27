require "git_hook/hook"
require "git_hook-rspec/version"

module GitHook
  class Rspec < GitHook::Hook
    def invoke
      rspec = 'rspec'
      rspec = "#{binstabs}/rspec" if options.binstabs?
      rspec = "bundle exec #{rspec}" unless options.bundler === false
      `#{rspec} #{options.cli || ''}`

      return $? === 0
    end

    def binstabs
      if options.binstabs === true
        'bin'
      else
        options.binstabs
      end
    end
  end
end

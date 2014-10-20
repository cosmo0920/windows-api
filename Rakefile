require 'rake'
require 'rake/clean'
require 'rake/testtask'

CLEAN.include("**/*.gem", "**/*.rbc")

namespace :gem do
  desc 'Create the windows-api gem'
  task :create => [:clean] do
    spec = eval(IO.read('windows-api.gemspec'))
    if Gem::VERSION < "2.0"
      Gem::Builder.new(spec).build
    else
      require 'rubygems/package'
      Gem::Package.build(spec)
    end
  end

  desc 'Install the windows-api gem'
  task :install => [:create] do
    file = Dir["*.gem"].first
    sh "gem install -l #{file}"
  end
end

Rake::TestTask.new do |test|
  test.warning = true
  test.verbose = true
end

task :default => :test

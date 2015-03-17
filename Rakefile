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

namespace :test do
  desc "Test the core windows-api library"
  Rake::TestTask.new(:api) do |t|
    t.warning = true
    t.verbose = true
    t.test_files = FileList['test/test_windows_api.rb']
  end

  desc "Test the wide string methods"
  Rake::TestTask.new(:wide) do |t|
    t.warning = true
    t.verbose = true
    t.test_files = FileList['test/test_wide_string.rb']
  end
end

task :default => :test

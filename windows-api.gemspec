require 'rubygems'

Gem::Specification.new do |spec|
  spec.name       = 'windows-api'
  spec.version    = '0.4.4'
  spec.author     = 'Daniel J. Berger'
  spec.license    = 'Artistic 2.0'
  spec.email      = 'djberg96@gmail.com'
  spec.homepage   = 'https://github.com/djberg96/windows-api'
  spec.summary    = 'An easier way to create methods using Win32::API'
  spec.test_files = Dir['test/test*.rb']
  spec.files      = Dir['**/*'].reject{ |f| f.include?('git') }

  spec.extra_rdoc_files  = ['README', 'CHANGES', 'MANIFEST']

  spec.add_dependency('win32-api', '>= 1.4.5')
  spec.add_development_dependency('test-unit')

  spec.description = <<-EOF
    The windows-api library provides features over and above the basic
    interface provided by the win32-api library. Features included automatic
    constant generation, automatic defintion of ANSI and Unicode methods,
    special handling of functions that return a boolean value, and the
    ability to use native Windows type declarations.
  EOF
end

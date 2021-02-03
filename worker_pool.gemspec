# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'delayed_job_worker_pool/version'

Gem::Specification.new do |spec|
  spec.name          = 'worker_pool'
  spec.version       = DelayedJobWorkerPool::VERSION
  spec.authors       = ['Joel Turkel']
  spec.email         = ['jturkel@salsify.com']

  spec.summary       = 'Worker process pooling'
  spec.homepage      = 'https://github.com/starburstlabs/worker_pool'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = ['worker_pool']
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.5'

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rails', '>= 4.2', '< 6'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '>= 3.3'
  spec.add_development_dependency 'sprockets', '< 4'
  spec.add_development_dependency 'sqlite3', '>= 1.3'
end

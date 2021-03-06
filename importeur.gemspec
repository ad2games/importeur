# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'importeur/version'

Gem::Specification.new do |spec|
  spec.name          = 'importeur'
  spec.version       = Importeur::VERSION
  spec.authors       = ['Helge Rausch']
  spec.email         = ['helge@rausch.io']

  spec.summary       = 'Universal data importer'
  spec.description   = 'Universal data importer'
  spec.homepage      = 'https://ad2games.com/'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'activerecord', '<5'
  spec.add_development_dependency 'acts_as_paranoid'
  spec.add_development_dependency 'appnexusapi'
  spec.add_development_dependency 'bucket_cake'
  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'database_cleaner'
  spec.add_development_dependency 'dotenv'
  spec.add_development_dependency 'pg', '<1'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rocketfuel_api'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'webmock'
end

# -*- ruby -*-
$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'activerecord-tablefree/version'

Gem::Specification.new do |gem|
  gem.name          = 'activerecord-tablefree'
  gem.version       = ActiveRecord::Tablefree::VERSION
  gem.platform      = Gem::Platform::RUBY
  gem.authors       = ['Jarl Friis', 'Kenneth Kalmer', 'Michal Zima', 'Peter Boling']
  gem.email         = ['jarl@softace.dk', 'peter.boling@gmail.com']
  gem.homepage      = 'https://github.com/boltthreads/activerecord-tablefree'
  gem.summary       = 'A library for implementing tablefree ActiveRecord models in Rails 5+'
  gem.description   = 'ActiveRecord Tablefree Models provides a simple mixin for creating models that are not bound to the database. This approach is useful for taking advantage of the features of ActiveRecord such as validation, relationships, nested_attributes, etc.'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($OUTPUT_RECORD_SEPARATOR)
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.has_rdoc      = true

  gem.require_paths = ['lib']

  gem.required_ruby_version = '>= 2.2.2' # Requirement for Rails 5

  gem.add_runtime_dependency('activerecord', '>= 5.0.0')

  gem.add_development_dependency('bundler', '~> 1.16.0')
  gem.add_development_dependency('rake', '~> 12', '> 0')

  #  gem.add_development_dependency("rails") # This is in the appraisal gemfiles
  gem.add_development_dependency('sqlite3', '~> 1.3')

  gem.add_development_dependency('appraisal', '~> 1.0')
  gem.add_development_dependency('aruba', '~> 0.5')
  gem.add_development_dependency('cucumber', '~> 3.1')
  gem.add_development_dependency('rspec', '~> 3.1')
  gem.add_development_dependency('rspec-collection_matchers', '~> 1.0')

  gem.add_development_dependency('capybara', '~> 2.17')
  gem.add_development_dependency('coveralls')
  gem.add_development_dependency('gem-release', '~> 2.0.1')
  gem.add_development_dependency('listen')
  gem.add_development_dependency('nokogiri', '~> 1.0')
  gem.add_development_dependency('rails')
  gem.add_development_dependency('wwtd')

  #  gem.add_development_dependency('launchy', '~> 2.1')
  #  gem.add_development_dependency('debugger')
end

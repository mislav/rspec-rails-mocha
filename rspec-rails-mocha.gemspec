# encoding: utf-8

Gem::Specification.new do |gem|
  gem.name    = 'rspec-rails-mocha'
  gem.version = '0.3.2'

  gem.add_dependency 'mocha', '>= 0.9.8'
  gem.add_dependency 'rspec-rails', '>= 2.0.0'

  gem.summary = "Mocha versions of mock_model and stub_model from rspec-rails"
  gem.description = "Ports functionality of mock_model and stub_model from rspec-rails using Mocha."

  gem.authors  = ['Mislav Marohnić', 'Paul Rosania']
  gem.email    = 'mislav.marohnic@gmail.com'
  gem.homepage = 'http://github.com/mislav/rspec-rails-mocha'

  # gem.rdoc_options = ['--main', 'README.rdoc', '--charset=UTF-8']
  # gem.extra_rdoc_files = ['README.rdoc', 'LICENSE', 'CHANGELOG.rdoc']

  gem.files = Dir['Rakefile', '{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
end

Gem::Specification.new do |gem|
  gem.name    = 'rspec-rails-mocha'
  gem.version = '0.2.1'
  gem.date    = Date.today.to_s

  gem.add_dependency 'mocha', '>= 0.9.8'
  gem.add_dependency 'rspec-rails', '>= 2.0.0'

  gem.summary = "mock_model and stub_model with Mocha"
  gem.description = "Ports functionality of mock_model and stub_model from rspec-rails using Mocha."

  gem.authors  = ['Mislav Marohnić']
  gem.email    = 'mislav.marohnic@gmail.com'
  gem.homepage = 'http://github.com/mislav/rspec-rails-mocha'

  gem.rubyforge_project = nil
  gem.has_rdoc = true
  # gem.rdoc_options = ['--main', 'README.rdoc', '--charset=UTF-8']
  # gem.extra_rdoc_files = ['README.rdoc', 'LICENSE', 'CHANGELOG.rdoc']

  gem.files = Dir['Rakefile', '{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
end

require 'rspec/core'
require 'rspec/rails/mocha'

Rspec.configure do |config|
  config.mock_with :mocha
  config.include RSpec::Rails::Mocha
end

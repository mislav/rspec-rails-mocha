require 'rspec/core'
require 'rspec/rails/mocha'

RSpec.configure do |config|
  config.mock_with :mocha
  config.include RSpec::Rails::Mocha
end

require 'spec'
require 'rspec/rails/mocha'

Spec::Runner.configure do |config|
  config.mock_with :mocha
  config.include Spec::Rails::Mocha
end

rspec-rails Mocha extension
===========================

Functionality of `mock_model` and `stub_model` from rspec-rails for those using Mocha.

Installation for **Rails 3** (rspec-rails v2.6 and above):

    # Gemfile
    group :development, :test do
      gem 'rspec-rails', '~> 2.4'
    end

    group :test do
      gem 'rspec-rails-mocha', '~> 0.3.1', :require => false
    end

    # spec/spec_helper.rb
    require 'rspec/rails'
    require 'rspec/rails/mocha'

For **Rails 2** (rspec-rails v1.3.x), use the '0.2.x' branch:

    gem 'rspec-rails-mocha', '~> 0.2.1'

Then, for any version of Rails, ensure that your "spec_helper.rb" file
**doesn't contain** `config.mock_with :rspec`.

Usage:

    describe "Mocha plugin" do
      it "#mock_model should use given ID" do
        person = mock_model(Person, :id => 66)
        
        person.should_not be_new_record
        person.id.should == 66
      end
    end

You should be able to use `mock_model` and `stub_model` in the same way
you use them when mocking with rspec instead of mocha. [Here are the
docs](http://relishapp.com/rspec/rspec-rails/v/2-6/dir/mocks/mock-model).

rspec-rails Mocha extension
===========================

Functionality of `mock_model` and `stub_model` from rspec-rails for those using Mocha.

Installation for **Rails 3**:

    # Gemfile
    group :test do
      gem 'rspec-rails-mocha', '~> 0.3.0'
    end

For **Rails 2**, use the '0.2.x' version:

    gem 'rspec-rails-mocha', '~> 0.2.1'

Usage:

    describe "Mocha plugin" do
      it "#mock_model should use given ID" do
        person = mock_model(Person, :id => 66)
        
        person.should_not be_new_record
        person.id.should == 66
      end
    end

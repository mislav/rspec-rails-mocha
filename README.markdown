rspec-rails Mocha extension
===========================

Functionality of `mock_model` and `stub_model` from rspec-rails for those using Mocha.

Installation:

    # Gemfile
    group :test do
      gem 'rspec-rails-mocha'
    end

Usage:

    describe "Mocha plugin" do
      it "#mock_model should use given ID" do
        person = mock_model(Person, :id => 66)
        
        person.should_not be_new_record
        person.id.should == 66
      end
    end

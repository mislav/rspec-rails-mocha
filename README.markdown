RSpec-Rails Mocha plugin
========================

This brings functionality of `mock_model` and `stub_model` from rspec-rails to those using Mocha.

    require 'rubygems'
    gem 'rspec', '1.1.12'
    require 'spec'
    require 'spec/rails'
    require 'rspec_rails_mocha'
    
    describe "Mocha plugin" do
      it "#mock_model should use given ID" do
        person = mock_model(Person, :id => 66)
        
        person.should_not be_new_record
        person.id.should == 66
      end
    end

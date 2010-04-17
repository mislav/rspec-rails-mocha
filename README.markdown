RSpec-Rails Mocha plugin
========================

(Tweaked to work with Rails 3 and RSpec 2.)

This brings functionality of `mock_model` and `stub_model` from rspec-rails to those using Mocha.

    require 'rubygems'
    gem 'rspec', '2.0.0.beta.6'
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

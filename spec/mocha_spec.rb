require 'rubygems'
gem 'rspec', '1.1.12'
require 'spec'
require File.dirname(__FILE__) + '/../lib/rspec_rails_mocha'

require 'active_support/core_ext/hash/reverse_merge'
include ActiveSupport::CoreExtensions::Hash::ReverseMerge

require 'active_support/core_ext/object/misc'

class Person
  attr_accessor :id, :name
  
  def has_attribute?(attr)
    respond_to?(attr)
  end
  
  def []=(attr, value)
    self.send("#{attr}=", value)
  end
end

class Hacker < Person
end

describe "rspec-rails Mocha plugin" do
  
  share_examples_for "model" do
    it "should be of correct class" do
      model = create(Hacker)
      
      model.is_a?(Person).should be_true
      model.kind_of?(Person).should be_true
      model.instance_of?(Person).should be_false
      model.instance_of?(Hacker).should be_true
      model.class.should == Hacker
    end
    
    it "should auto-generate IDs" do
      personA = create(Person)
      personB = create(Person)
      personA.id.should >= 1000
      personB.id.should > personA.id
    end
    
    it "should use given ID" do
      person = create(Person, :id => 66)
      person.id.should == 66
    end
    
    it "should mock a record with properties" do
      hacker = create(Hacker, :name => "Mislav", :skillz => 1337)
      hacker.name.should == "Mislav"
      hacker.skillz.should == 1337
    end
    
    it "should not be new record" do
      create(Person).should_not be_new_record
    end
    
    it "should be new record when explicitly stated" do
      create(Person).as_new_record.should be_new_record
    end
  end
  
  describe "#mock_model" do
    it_should_behave_like "model"
    
    def create(*args)
      mock_model(*args)
    end
    
    it "should have no errors" do
      create(Person).errors.count.should == 0
    end
  end
  
  describe "#stub_model" do
    it_should_behave_like "model"
    
    def create(*args)
      stub_model(*args)
    end
    
    it "can't connect" do
      lambda {
        create(Person).connection
      }.should raise_error(Spec::Rails::IllegalDataAccessException)
    end
  end
  
end
require 'rubygems' 
require 'extensions'
gem 'rspec'

describe Integer do
  it "should have a pixels method" do
    3.should respond_to(:pixels)
  end
  
  it "should have a pixel method" do
    1.should respond_to(:pixel)
  end
end

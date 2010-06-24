require 'rubygems' 
require 'extensions'
gem 'rspec'

describe Integer do
  it "should have a pixels method" do
    3.should respond_to(:pixels)
  end
end

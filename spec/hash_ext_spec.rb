require 'spec_helper'

describe Hash do
  it "should return only the keys specified" do
    hash = {:a => 'foo', :b => 'bar', :c => 'baz'}
    hash.only(:a, :b).should == {:a => 'foo', :b => 'bar'}
  end

  it "should return only the keys specified, ignoring keys that do not exist" do
    hash = {:a => 'foo', :b => 'bar', :c => 'baz'}
    hash.only(:a, :d).should == {:a => 'foo'}
  end
end

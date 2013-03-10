require 'Filter'

describe "Filter" do
  before(:each) do  
    @filter = Filter.new('todo with #hash1 and #hash2 and more text')
  end
  it "should return an array of hashes" do
    hashes = @filter.getHashes
    hashes.kind_of?(Array).should be_true
  end

  it "should return hash1 as 1rst return value" do
    hashes = @filter.getHashes
    hashes[0].should == "hash1"
  end

  it "should return hash2 as 2nd return value" do
    hashes = @filter.getHashes
    hashes[1].should == "hash2"
  end
    
end

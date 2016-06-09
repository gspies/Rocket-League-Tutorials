require 'spec_helper'

describe Tutorial do
  it "should not allow duplicates" do
    
    @tut1 = Tutorial.create(link: "example.com")
    @tut2 = Tutorial.create(link: "example.com")
    expect(Tutorial.count).to eq(1)
  end
end


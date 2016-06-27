require 'rails_helper'

RSpec.describe "difficulties/index", type: :view do
  before(:each) do
    assign(:difficulties, [
      Difficulty.create!(
        :name => "Name"
      ),
      Difficulty.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of difficulties" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

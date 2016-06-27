require 'rails_helper'

RSpec.describe "difficulties/new", type: :view do
  before(:each) do
    assign(:difficulty, Difficulty.new(
      :name => "MyString"
    ))
  end

  it "renders new difficulty form" do
    render

    assert_select "form[action=?][method=?]", difficulties_path, "post" do

      assert_select "input#difficulty_name[name=?]", "difficulty[name]"
    end
  end
end

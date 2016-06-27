require 'rails_helper'

RSpec.describe "difficulties/edit", type: :view do
  before(:each) do
    @difficulty = assign(:difficulty, Difficulty.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit difficulty form" do
    render

    assert_select "form[action=?][method=?]", difficulty_path(@difficulty), "post" do

      assert_select "input#difficulty_name[name=?]", "difficulty[name]"
    end
  end
end

require 'rails_helper'

RSpec.describe "difficulties/show", type: :view do
  before(:each) do
    @difficulty = assign(:difficulty, Difficulty.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end

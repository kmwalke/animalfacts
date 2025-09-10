require 'rails_helper'

RSpec.describe "facts/show", type: :view do
  before(:each) do
    assign(:fact, Fact.create!(
      name: "Name",
      description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end

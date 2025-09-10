require 'rails_helper'

RSpec.describe "facts/edit", type: :view do
  let(:fact) {
    Fact.create!(
      name: "MyString",
      description: "MyText"
    )
  }

  before(:each) do
    assign(:fact, fact)
  end

  it "renders the edit fact form" do
    render

    assert_select "form[action=?][method=?]", fact_path(fact), "post" do

      assert_select "input[name=?]", "fact[name]"

      assert_select "textarea[name=?]", "fact[description]"
    end
  end
end

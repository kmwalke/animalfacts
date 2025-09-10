require 'rails_helper'

RSpec.describe "facts/new", type: :view do
  before(:each) do
    assign(:fact, Fact.new(
      name: "MyString",
      description: "MyText"
    ))
  end

  it "renders new fact form" do
    render

    assert_select "form[action=?][method=?]", facts_path, "post" do

      assert_select "input[name=?]", "fact[name]"

      assert_select "textarea[name=?]", "fact[description]"
    end
  end
end

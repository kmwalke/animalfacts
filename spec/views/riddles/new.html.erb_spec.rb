require 'rails_helper'

RSpec.describe "riddles/new", type: :view do
  before(:each) do
    assign(:riddle, Riddle.new())
  end

  it "renders new riddle form" do
    render

    assert_select "form[action=?][method=?]", riddles_path, "post" do
    end
  end
end

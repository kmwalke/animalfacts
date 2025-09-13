require 'rails_helper'

RSpec.describe "riddles/edit", type: :view do
  let(:riddle) {
    Riddle.create!()
  }

  before(:each) do
    assign(:riddle, riddle)
  end

  it "renders the edit riddle form" do
    render

    assert_select "form[action=?][method=?]", riddle_path(riddle), "post" do
    end
  end
end

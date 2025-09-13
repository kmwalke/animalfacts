require 'rails_helper'

RSpec.describe "riddles/index", type: :view do
  before(:each) do
    assign(:riddles, [
      Riddle.create!(),
      Riddle.create!()
    ])
  end

  it "renders a list of riddles" do
    render
    cell_selector = 'div>p'
  end
end

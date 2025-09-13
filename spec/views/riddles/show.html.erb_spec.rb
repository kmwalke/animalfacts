require 'rails_helper'

RSpec.describe "riddles/show", type: :view do
  before(:each) do
    assign(:riddle, Riddle.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

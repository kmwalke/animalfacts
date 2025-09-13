require 'rails_helper'

RSpec.describe "paragraphs/index", type: :view do
  before(:each) do
    assign(:paragraphs, [
      Paragraph.create!(),
      Paragraph.create!()
    ])
  end

  it "renders a list of paragraphs" do
    render
    cell_selector = 'div>p'
  end
end

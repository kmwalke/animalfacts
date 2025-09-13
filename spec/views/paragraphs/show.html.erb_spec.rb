require 'rails_helper'

RSpec.describe "paragraphs/show", type: :view do
  before(:each) do
    assign(:paragraph, Paragraph.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

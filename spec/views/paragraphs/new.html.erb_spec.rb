require 'rails_helper'

RSpec.describe "paragraphs/new", type: :view do
  before(:each) do
    assign(:paragraph, Paragraph.new())
  end

  it "renders new paragraph form" do
    render

    assert_select "form[action=?][method=?]", paragraphs_path, "post" do
    end
  end
end

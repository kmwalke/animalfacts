require 'rails_helper'

RSpec.describe "paragraphs/edit", type: :view do
  let(:paragraph) {
    Paragraph.create!()
  }

  before(:each) do
    assign(:paragraph, paragraph)
  end

  it "renders the edit paragraph form" do
    render

    assert_select "form[action=?][method=?]", paragraph_path(paragraph), "post" do
    end
  end
end

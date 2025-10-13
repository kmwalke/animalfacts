class HomeController < ApplicationController
  def index
    @facts     = Fact.all.order(id: :desc).limit(3)
    @riddles   = Riddle.all.order(id: :desc).limit(3)
    @paragraph = Paragraph.all.order(id: :desc).first
  end
end

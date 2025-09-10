class HomeController < ApplicationController
  def index
    @facts = Fact.all.order(id: :desc).limit(3)
  end
end

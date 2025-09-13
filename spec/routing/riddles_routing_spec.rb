require "rails_helper"

RSpec.describe RiddlesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/riddles").to route_to("riddles#index")
    end

    it "routes to #new" do
      expect(get: "/riddles/new").to route_to("riddles#new")
    end

    it "routes to #show" do
      expect(get: "/riddles/1").to route_to("riddles#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/riddles/1/edit").to route_to("riddles#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/riddles").to route_to("riddles#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/riddles/1").to route_to("riddles#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/riddles/1").to route_to("riddles#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/riddles/1").to route_to("riddles#destroy", id: "1")
    end
  end
end

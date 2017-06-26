require "rails_helper"

RSpec.describe BeesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bees").to route_to("bees#index")
    end


    it "routes to #show" do
      expect(:get => "/bees/1").to route_to("bees#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/bees").to route_to("bees#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bees/1").to route_to("bees#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bees/1").to route_to("bees#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bees/1").to route_to("bees#destroy", :id => "1")
    end

  end
end

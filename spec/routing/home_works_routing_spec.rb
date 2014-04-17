require "spec_helper"

describe HomeWorksController do
  describe "routing" do

    it "routes to #index" do
      get("/home_works").should route_to("home_works#index")
    end

    it "routes to #new" do
      get("/home_works/new").should route_to("home_works#new")
    end

    it "routes to #show" do
      get("/home_works/1").should route_to("home_works#show", :id => "1")
    end

    it "routes to #edit" do
      get("/home_works/1/edit").should route_to("home_works#edit", :id => "1")
    end

    it "routes to #create" do
      post("/home_works").should route_to("home_works#create")
    end

    it "routes to #update" do
      put("/home_works/1").should route_to("home_works#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/home_works/1").should route_to("home_works#destroy", :id => "1")
    end

  end
end

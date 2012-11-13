require "spec_helper"

describe MiembrosController do
  describe "routing" do

    it "routes to #index" do
      get("/miembros").should route_to("miembros#index")
    end

    it "routes to #new" do
      get("/miembros/new").should route_to("miembros#new")
    end

    it "routes to #show" do
      get("/miembros/1").should route_to("miembros#show", :id => "1")
    end

    it "routes to #edit" do
      get("/miembros/1/edit").should route_to("miembros#edit", :id => "1")
    end

    it "routes to #create" do
      post("/miembros").should route_to("miembros#create")
    end

    it "routes to #update" do
      put("/miembros/1").should route_to("miembros#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/miembros/1").should route_to("miembros#destroy", :id => "1")
    end

  end
end

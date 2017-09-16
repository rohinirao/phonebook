require "rails_helper"

RSpec.describe ContactAddressesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/contact_addresses").to route_to("contact_addresses#index")
    end

    it "routes to #new" do
      expect(:get => "/contact_addresses/new").to route_to("contact_addresses#new")
    end

    it "routes to #show" do
      expect(:get => "/contact_addresses/1").to route_to("contact_addresses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/contact_addresses/1/edit").to route_to("contact_addresses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/contact_addresses").to route_to("contact_addresses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/contact_addresses/1").to route_to("contact_addresses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/contact_addresses/1").to route_to("contact_addresses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/contact_addresses/1").to route_to("contact_addresses#destroy", :id => "1")
    end

  end
end

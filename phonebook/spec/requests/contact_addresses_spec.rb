require 'rails_helper'

RSpec.describe "ContactAddresses", type: :request do
  describe "GET /contact_addresses" do
    it "works! (now write some real specs)" do
      get contact_addresses_path
      expect(response).to have_http_status(200)
    end
  end
end

require 'rails_helper'

RSpec.describe "contact_addresses/new", type: :view do
  before(:each) do
    assign(:contact_address, ContactAddress.new(
      :user => nil,
      :label => "MyString",
      :address => "MyText"
    ))
  end

  it "renders new contact_address form" do
    render

    assert_select "form[action=?][method=?]", contact_addresses_path, "post" do

      assert_select "input[name=?]", "contact_address[user_id]"

      assert_select "input[name=?]", "contact_address[label]"

      assert_select "textarea[name=?]", "contact_address[address]"
    end
  end
end

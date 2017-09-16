require 'rails_helper'

RSpec.describe "contact_addresses/edit", type: :view do
  before(:each) do
    @contact_address = assign(:contact_address, ContactAddress.create!(
      :user => nil,
      :label => "MyString",
      :address => "MyText"
    ))
  end

  it "renders the edit contact_address form" do
    render

    assert_select "form[action=?][method=?]", contact_address_path(@contact_address), "post" do

      assert_select "input[name=?]", "contact_address[user_id]"

      assert_select "input[name=?]", "contact_address[label]"

      assert_select "textarea[name=?]", "contact_address[address]"
    end
  end
end

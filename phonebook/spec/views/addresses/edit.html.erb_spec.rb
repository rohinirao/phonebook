require 'rails_helper'

RSpec.describe "addresses/edit", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :contact => nil,
      :label => "MyString",
      :address => "MyText"
    ))
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", address_path(@address), "post" do

      assert_select "input#address_contact_id[name=?]", "address[contact_id]"

      assert_select "input#address_label[name=?]", "address[label]"

      assert_select "textarea#address_address[name=?]", "address[address]"
    end
  end
end

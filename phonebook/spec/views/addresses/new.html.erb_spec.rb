require 'rails_helper'

RSpec.describe "addresses/new", type: :view do
  before(:each) do
    assign(:address, Address.new(
      :contact => nil,
      :label => "MyString",
      :address => "MyText"
    ))
  end

  it "renders new address form" do
    render

    assert_select "form[action=?][method=?]", addresses_path, "post" do

      assert_select "input#address_contact_id[name=?]", "address[contact_id]"

      assert_select "input#address_label[name=?]", "address[label]"

      assert_select "textarea#address_address[name=?]", "address[address]"
    end
  end
end

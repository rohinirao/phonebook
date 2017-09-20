require 'rails_helper'

RSpec.describe "phone_numbers/new", type: :view do
  before(:each) do
    assign(:phone_number, PhoneNumber.new(
      :contact => nil,
      :label => "MyString",
      :phone_number => "MyString"
    ))
  end

  it "renders new phone_number form" do
    render

    assert_select "form[action=?][method=?]", phone_numbers_path, "post" do

      assert_select "input#phone_number_contact_id[name=?]", "phone_number[contact_id]"

      assert_select "input#phone_number_label[name=?]", "phone_number[label]"

      assert_select "input#phone_number_phone_number[name=?]", "phone_number[phone_number]"
    end
  end
end

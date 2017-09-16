require 'rails_helper'

RSpec.describe "contact_numbers/new", type: :view do
  before(:each) do
    assign(:contact_number, ContactNumber.new(
      :user => nil,
      :label => "MyString",
      :number => 1
    ))
  end

  it "renders new contact_number form" do
    render

    assert_select "form[action=?][method=?]", contact_numbers_path, "post" do

      assert_select "input[name=?]", "contact_number[user_id]"

      assert_select "input[name=?]", "contact_number[label]"

      assert_select "input[name=?]", "contact_number[number]"
    end
  end
end

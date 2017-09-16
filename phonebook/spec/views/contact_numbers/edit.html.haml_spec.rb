require 'rails_helper'

RSpec.describe "contact_numbers/edit", type: :view do
  before(:each) do
    @contact_number = assign(:contact_number, ContactNumber.create!(
      :user => nil,
      :label => "MyString",
      :number => 1
    ))
  end

  it "renders the edit contact_number form" do
    render

    assert_select "form[action=?][method=?]", contact_number_path(@contact_number), "post" do

      assert_select "input[name=?]", "contact_number[user_id]"

      assert_select "input[name=?]", "contact_number[label]"

      assert_select "input[name=?]", "contact_number[number]"
    end
  end
end

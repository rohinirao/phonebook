require 'rails_helper'

RSpec.describe "phone_numbers/index", type: :view do
  before(:each) do
    assign(:phone_numbers, [
      PhoneNumber.create!(
        :contact => nil,
        :label => "Label",
        :phone_number => "Phone Number"
      ),
      PhoneNumber.create!(
        :contact => nil,
        :label => "Label",
        :phone_number => "Phone Number"
      )
    ])
  end

  it "renders a list of phone_numbers" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
  end
end

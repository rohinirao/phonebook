require 'rails_helper'

RSpec.describe "contact_addresses/index", type: :view do
  before(:each) do
    assign(:contact_addresses, [
      ContactAddress.create!(
        :user => nil,
        :label => "Label",
        :address => "MyText"
      ),
      ContactAddress.create!(
        :user => nil,
        :label => "Label",
        :address => "MyText"
      )
    ])
  end

  it "renders a list of contact_addresses" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

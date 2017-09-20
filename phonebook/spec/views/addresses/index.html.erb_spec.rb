require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        :contact => nil,
        :label => "Label",
        :address => "MyText"
      ),
      Address.create!(
        :contact => nil,
        :label => "Label",
        :address => "MyText"
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

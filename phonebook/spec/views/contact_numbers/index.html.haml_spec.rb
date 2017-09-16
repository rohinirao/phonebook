require 'rails_helper'

RSpec.describe "contact_numbers/index", type: :view do
  before(:each) do
    assign(:contact_numbers, [
      ContactNumber.create!(
        :user => nil,
        :label => "Label",
        :number => 2
      ),
      ContactNumber.create!(
        :user => nil,
        :label => "Label",
        :number => 2
      )
    ])
  end

  it "renders a list of contact_numbers" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end

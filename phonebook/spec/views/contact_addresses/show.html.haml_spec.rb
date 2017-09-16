require 'rails_helper'

RSpec.describe "contact_addresses/show", type: :view do
  before(:each) do
    @contact_address = assign(:contact_address, ContactAddress.create!(
      :user => nil,
      :label => "Label",
      :address => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Label/)
    expect(rendered).to match(/MyText/)
  end
end

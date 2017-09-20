require 'rails_helper'

RSpec.describe "phone_numbers/show", type: :view do
  before(:each) do
    @phone_number = assign(:phone_number, PhoneNumber.create!(
      :contact => nil,
      :label => "Label",
      :phone_number => "Phone Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Label/)
    expect(rendered).to match(/Phone Number/)
  end
end

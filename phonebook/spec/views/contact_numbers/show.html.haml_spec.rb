require 'rails_helper'

RSpec.describe "contact_numbers/show", type: :view do
  before(:each) do
    @contact_number = assign(:contact_number, ContactNumber.create!(
      :user => nil,
      :label => "Label",
      :number => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Label/)
    expect(rendered).to match(/2/)
  end
end

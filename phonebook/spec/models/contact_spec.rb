require 'rails_helper'

RSpec.describe Contact, type: :model do
  contact = FactoryGirl.create(:contact)

  it "is valid with valid attributes" do
    expect(contact).to be_valid
  end

  it "is is valid without notes" do
    contact.notes = nil
    expect(contact).to be_valid
  end

  it "is not valid without a first_name" do
  	contact.first_name = nil
    expect(contact).to_not be_valid
  end

  it "is not valid without a last_name" do
  	contact.last_name = nil
  	expect(contact).to_not be_valid
  end

  it "is not valid without a email" do
    contact.email = nil
    expect(contact).to_not be_valid
  end

  it "is not valid without a valid email" do
    contact.email = "raj@gmail"
    expect(contact).to_not be_valid
  end
end

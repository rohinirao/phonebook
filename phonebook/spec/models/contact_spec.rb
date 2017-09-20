require 'rails_helper'

RSpec.describe Contact, type: :model do
  contact = FactoryGirl.create(:contact)

  context "with valid attributes" do
    it "is valid" do
      expect(contact).to be_valid
    end

    context "when notes is blank" do
      it "is is valid without notes" do
        contact.notes = nil
        expect(contact).to be_valid
      end
    end
  end

  context "with invalid attributes" do
    context "when first_name is blank" do
      it "is not valid" do
  	    contact.first_name = nil
        expect(contact).to_not be_valid
      end
    end

    context "when last_name is blank" do
      it "is not valid" do
        contact.last_name = nil
        expect(contact).to_not be_valid
      end
    end

    context "when email is blank" do
      it "is not valid" do
        contact.email = nil
        expect(contact).to_not be_valid
      end
    end

    context "when email is not in 'name@domain.com'" do
      it "is not valid" do
        contact.email = "raj@gmail"
        expect(contact).to_not be_valid
      end
    end
  end

  describe "#full_name" do
    it "should return Full Name" do
      conct = Contact.new(first_name: "Melwyn" , last_name: "Abraham" , email: "melwynabraham@gmail.com")
      conct.full_name.should == "Melwyn Abraham"
    end
  end



end
